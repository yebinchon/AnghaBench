
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_credops {int dummy; } ;
struct rpc_cred {int cr_cred; int cr_expire; struct rpc_credops const* cr_ops; scalar_t__ cr_flags; struct rpc_auth* cr_auth; int cr_count; int cr_lru; int cr_hash; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {int cred; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int get_cred (int ) ;
 int jiffies ;
 int refcount_set (int *,int) ;

void
rpcauth_init_cred(struct rpc_cred *cred, const struct auth_cred *acred,
    struct rpc_auth *auth, const struct rpc_credops *ops)
{
 INIT_HLIST_NODE(&cred->cr_hash);
 INIT_LIST_HEAD(&cred->cr_lru);
 refcount_set(&cred->cr_count, 1);
 cred->cr_auth = auth;
 cred->cr_flags = 0;
 cred->cr_ops = ops;
 cred->cr_expire = jiffies;
 cred->cr_cred = get_cred(acred->cred);
}
