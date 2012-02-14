param([switch]$CssOnly)

$solutionDir = ".\"
$projectDir = ".\src\Web\"

sal ___AjaxMin "$solutionDir\tools\AjaxMin.exe"

___AjaxMin -clobber, 
    ("$projectDir" + "assets\css\screen.css"),
    ("$projectDir" + "assets\css\print.css"),
    -o ("$projectDir" + "assets\css\global.min.css")

if(!$CssOnly) { 
    
    ___AjaxMin -clobber, 
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.core.js"),
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.widget.js"),
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.mouse.js"),
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.position.js"),
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.dialog.js"),
        ("$projectDir" + "assets\js\jquery.ui\jquery.ui.datepicker.js"),
        ("$projectDir" + "assets\js\plugins.js"), 
        ("$projectDir" + "assets\js\script.js"), 
        -o ("$projectDir" + "assets\js\global.min.js")
}