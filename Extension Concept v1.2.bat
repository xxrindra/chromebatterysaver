@echo off
:1
color a
echo Battery Remover (Concept v1.2)
echo Changelog: Fixed loading not connecting
echo Type start to continue
set /p input=
if /i %input%==Start goto install
if /i %input%==n/a goto lock
if /i not %input%== Yes,no goto 1

:install
echo Loading APIs
timeout 3
echo API Loaded
echo Loading Packages
timeout 3
echo Loading Batch Start
echo Installing Repository Files
pause
echo Loading...
echo Loading...
timeout 3
echo Loading Menu
echo Welcome!
echo Please Input You're Injector Type
echo To Choose, Type The Number By Your Option
timeout 1
echo 1. Inject (WORKING)
echo Please input your choice now:
set /p input=
if /i %input%==1 goto finish
if /i %input%==n/a goto lock
if /i not %input%== Yes,no goto install
pause

:finish
:ProgressMeter
SETLOCAL ENABLEDELAYEDEXPANSION
SET ProgressPercent=%1
SET /A NumBars=%ProgressPercent%/2
SET /A NumSpaces=50-%NumBars%

SET Meter=

FOR /L %%A IN (%NumBars%,-1,1) DO SET Meter=!Meter!I
FOR /L %%A IN (%NumSpaces%,-1,1) DO SET Meter=!Meter!

TITLE Progress:  [%Meter%]  %ProgressPercent%%%
ENDLOCAL
GOTO :EOF

exit
:lock
echo Deactivating packages...
echo done..
exit
