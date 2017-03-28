=========== from OReilly.Learning.AngularJS.pdf eBook ==================
Steps To Server Files Locally
Using NodeJS
> git clone https://github.com/KenWilliamson/LearningAngularJS_chapter4.git
> cd LearningAngularJS_chapter4
> npm init
   (accept all defaults)
> npm install --save http-server
will add 
  "dependencies": {
    "http-server": "^0.9.0"
  }
to package.json file.  
> node node_modules/http-server/bin/http-server
connect browser to http://localhost:8080 example directory is served
--------------- p.55 Chapter 4 AngularJS Controllers -----------------
1. ontrollers should be used to initialize the model scope properties. When a controller
is created and attached to the DOM, a child scope is created. 
Ex: controller.js: adding the customer name and customer number to the scope, 
helloWorldControllers.controller('CustomerCtrl', ['$scope',
function CustomerCtrl($scope) {
 $scope.customerName = "Bob's Burgers";
 $scope.customerNumber = "44522";
}]);
2. After Model properties added to the scope in controller, they are available inside the view templates. 
Ex: customer.html: properties available to the view and can be accessed with double curly braces:
<div><b>Customer Name:</b> {{customerName}}</div>
<div><b>Customer Number:</b> {{customerNumber}}</div>
3. The second primary use for controllers is adding behavior to the $scope object. We
add behavior by adding methods to the scope, as shown in the following controller code:
 // add method to scope
 $scope.changeCustomer = function(){
 $scope.customerName = $scope.cName;
 $sscope.customerNumber = $scope.cNumber;
}
4. customer.html: We add two new properties to the model by using ng-model="cName" and ng-model="cNumber".
We use ngclick="changeCustomer();" to invoke the new changeCustomer method that is
attached to the scope:
5. We use the $routeParams service in the new
controller to get access to the values passed as path parameter arguments in the URL.
By using $routeParams.customer we get access to the customer name, and $route
Params.city gets us access to the city.
---------------- p.67 Testing with Karma --------------------
1. Add the following content package.json which is used as a configuration file for
Node.js:
{
  "name": "ken",
  "devDependencies": {
    "karma": "*",
    "karma-chrome-launcher": "*",
    "karma-firefox-launcher": "*",
    "karma-jasmine": "*",
    "karma-junit-reporter": "*",
    "karma-coverage": "*"
  }
}
2. > npm install 
is command to actually install the Node.js dependencies defined in the pack‐
age.json file:
All the Node.js dependencies specified in the package.json file will be installed under
the node_modules folder inside the project root folder. 
3.
Now install the Karma command-line interface (karma-cli) by 
> npm install -g karma-cli
Make sure to record the location where karma-cli was installed.
You will need the location later in this chapter.
This command installs the command-line tool globally on your system.
C:\NTU\Ruby\GitHub\LearningAngularJS_chapter4>npm install -g karma-cli
C:\Users\timchen777\AppData\Roaming\npm\karma -> C:\Users\timchen777\AppData\Roaming\npm\node_mo
dules\karma-cli\bin\karma
C:\Users\timchen777\AppData\Roaming\npm
`-- karma-cli@1.0.1
  `-- resolve@1.3.2
    `-- path-parse@1.0.5
4. Create a new Karma configuration file karma.conf.js inside the test folder.
Under Karma, right-click the project and select “Test” from the menu. Karma will start.
???