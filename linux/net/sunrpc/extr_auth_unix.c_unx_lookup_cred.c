
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {unsigned long cr_flags; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {int dummy; } ;


 int GFP_NOFS ;
 unsigned long RPCAUTH_CRED_UPTODATE ;
 struct rpc_cred* mempool_alloc (int ,int ) ;
 int rpcauth_init_cred (struct rpc_cred*,struct auth_cred*,struct rpc_auth*,int *) ;
 int unix_credops ;
 int unix_pool ;

__attribute__((used)) static struct rpc_cred *
unx_lookup_cred(struct rpc_auth *auth, struct auth_cred *acred, int flags)
{
 struct rpc_cred *ret = mempool_alloc(unix_pool, GFP_NOFS);

 rpcauth_init_cred(ret, acred, auth, &unix_credops);
 ret->cr_flags = 1UL << RPCAUTH_CRED_UPTODATE;
 return ret;
}
