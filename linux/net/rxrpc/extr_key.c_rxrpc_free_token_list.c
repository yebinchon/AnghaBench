
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_key_token {int security_index; int k5; struct rxrpc_key_token* kad; struct rxrpc_key_token* next; } ;


 int BUG () ;


 int kfree (struct rxrpc_key_token*) ;
 int pr_err (char*,int) ;
 int rxrpc_rxk5_free (int ) ;

__attribute__((used)) static void rxrpc_free_token_list(struct rxrpc_key_token *token)
{
 struct rxrpc_key_token *next;

 for (; token; token = next) {
  next = token->next;
  switch (token->security_index) {
  case 128:
   kfree(token->kad);
   break;
  case 129:
   if (token->k5)
    rxrpc_rxk5_free(token->k5);
   break;
  default:
   pr_err("Unknown token type %x on rxrpc key\n",
          token->security_index);
   BUG();
  }

  kfree(token);
 }
}
