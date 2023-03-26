sudo apt-get update
sudo apt-get install -y wget apt-transport-https software-properties-common
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
pwsh
Import-Module ./arm-ttk.psd1
Test-AzTemplate -TemplatePath /home/ubuntu/CIaCSTrainingARM/ContosoFinance-Demo-ARM/ARM-Templates/template.json
