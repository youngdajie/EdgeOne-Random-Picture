chcp 65001
@echo off
setlocal enabledelayedexpansion

:: ====== 配置区 ======
set START_NUM=1
:: ===================

echo.
echo 当前起始编号为：%START_NUM%
echo 是否修改？(Y/N)
set /p CHANGE=
if /i "%CHANGE%"=="Y" (
    set /p START_NUM=请输入新的起始编号：
)

set NUM=%START_NUM%

for %%F in (*.*) do (
    :: 跳过 bat 自身
    if /i not "%%~nxF"=="%~nx0" (
        ren "%%F" "!NUM!%%~xF"
        set /a NUM+=1
    )
)

echo.
echo 重命名完成！@yangjie.site
echo 重命名完成！✔️✔️✔️✔️✔️✔️
echo 重命名完成！➡️➡️➡️➡️➡️➡️
pause