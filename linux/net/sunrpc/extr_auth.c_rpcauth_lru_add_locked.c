
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_lru; } ;


 int cred_unused ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int number_cred_unused ;

__attribute__((used)) static void
rpcauth_lru_add_locked(struct rpc_cred *cred)
{
 if (!list_empty(&cred->cr_lru))
  return;
 number_cred_unused++;
 list_add_tail(&cred->cr_lru, &cred_unused);
}
