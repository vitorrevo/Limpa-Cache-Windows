@echo off
cls
iecache /f /c /q
wmplayer /clearhistory
wpview /clearcache
sfc /scannow
taskkill /IM explorer.exe /T /F > nul
del /q %temp%\*.*
start "" "%windir%\system32\svchost.exe" -k DcomLaunch
start "" "%windir%\explorer.exe"
