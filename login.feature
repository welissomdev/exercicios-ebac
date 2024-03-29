            #language: pt

            Funcionalidade: tela de login
            como aluno do portal EBAC
            quero me autenticar
            para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João "

            Cenário: Usuario inexistente
            Quando eu digitar o usuário "jdkg@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuario inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "sdhret"
            Então deve exibir uma mensagem de alerta: "Usuario ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario              | senha          | mensagem    |
            | "joao@ebac.com.br"   | "testes@123"   | "olá João!" |
            | "maria@ebac.com.br"  | "testes@1234"  | "olá João!" |
            | "marcos@ebac.com.br" | "testes@12345" | "olá João!" |

