@echo off
title broodROM Configurator
echo.
echo Pushing custom bootanimation
echo Make sure your phone has debugging mode enabled
echo.
cd /d %~dp0
adb root
echo. 
echo Please connect your phone to continue...
adb wait-for-device
echo. 
adb remount
cls
echo.
adb push "temp/sanim.zip" "system/media/sanim.zip"
echo Pushing sanim.zip
adb -d shell chmod 0644 "system/media/sanim.zip"
echo Settings Permissions to 644 (RW-R-R)
echo.
echo Done...
echo.
if %1% == pause_0 exit
if %1% == pause_1 pause