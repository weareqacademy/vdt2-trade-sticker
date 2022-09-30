*** Settings ***
Documentation            Login tests

Resource       ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

Nao deve logar com senha incorreta
    Go To Login Page
    Submit Credentials        papito@gmail.com    abc123
    Toast Message Should Be   Credenciais inválidas, tente novamente!

# Deve exibir notificacao toaster se a senha nao for preenchida
# Deve exibir notificacao toaster se o email nao for preenchido
# Deve exibir notiticacao toaster se email e senha nao forem preenchidos


