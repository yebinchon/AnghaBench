
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {TYPE_2__* cr_auth; int cr_flags; } ;
typedef int spinlock_t ;
struct TYPE_4__ {TYPE_1__* au_credcache; } ;
struct TYPE_3__ {int lock; } ;


 int RPCAUTH_CRED_HASHED ;
 int rpcauth_unhash_cred_locked (struct rpc_cred*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
rpcauth_unhash_cred(struct rpc_cred *cred)
{
 spinlock_t *cache_lock;
 bool ret;

 if (!test_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags))
  return 0;
 cache_lock = &cred->cr_auth->au_credcache->lock;
 spin_lock(cache_lock);
 ret = rpcauth_unhash_cred_locked(cred);
 spin_unlock(cache_lock);
 return ret;
}
