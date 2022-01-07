
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_hash; int cr_flags; } ;


 int RPCAUTH_CRED_HASHED ;
 int hlist_del_rcu (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool
rpcauth_unhash_cred_locked(struct rpc_cred *cred)
{
 if (!test_and_clear_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags))
  return 0;
 hlist_del_rcu(&cred->cr_hash);
 return 1;
}
