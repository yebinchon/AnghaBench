
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {TYPE_1__* cr_ops; int cr_count; int cr_flags; int cr_expire; } ;
struct TYPE_2__ {int (* crdestroy ) (struct rpc_cred*) ;} ;


 int RPCAUTH_CRED_HASHED ;
 int RPCAUTH_CRED_UPTODATE ;
 int jiffies ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_read (int *) ;
 int rpcauth_lru_add (struct rpc_cred*) ;
 int rpcauth_lru_remove (struct rpc_cred*) ;
 scalar_t__ rpcauth_unhash_cred (struct rpc_cred*) ;
 int stub1 (struct rpc_cred*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void
put_rpccred(struct rpc_cred *cred)
{
 if (cred == ((void*)0))
  return;
 rcu_read_lock();
 if (refcount_dec_and_test(&cred->cr_count))
  goto destroy;
 if (refcount_read(&cred->cr_count) != 1 ||
     !test_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags))
  goto out;
 if (test_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0) {
  cred->cr_expire = jiffies;
  rpcauth_lru_add(cred);

  if (unlikely(!test_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags)))
   rpcauth_lru_remove(cred);
 } else if (rpcauth_unhash_cred(cred)) {
  rpcauth_lru_remove(cred);
  if (refcount_dec_and_test(&cred->cr_count))
   goto destroy;
 }
out:
 rcu_read_unlock();
 return;
destroy:
 rcu_read_unlock();
 cred->cr_ops->crdestroy(cred);
}
