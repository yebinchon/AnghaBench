
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_lru; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int number_cred_unused ;

__attribute__((used)) static void
rpcauth_lru_remove_locked(struct rpc_cred *cred)
{
 if (list_empty(&cred->cr_lru))
  return;
 number_cred_unused--;
 list_del_init(&cred->cr_lru);
}
