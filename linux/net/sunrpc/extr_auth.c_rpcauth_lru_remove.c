
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_lru; } ;


 scalar_t__ list_empty (int *) ;
 int rpc_credcache_lock ;
 int rpcauth_lru_remove_locked (struct rpc_cred*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
rpcauth_lru_remove(struct rpc_cred *cred)
{
 if (list_empty(&cred->cr_lru))
  return;
 spin_lock(&rpc_credcache_lock);
 rpcauth_lru_remove_locked(cred);
 spin_unlock(&rpc_credcache_lock);
}
