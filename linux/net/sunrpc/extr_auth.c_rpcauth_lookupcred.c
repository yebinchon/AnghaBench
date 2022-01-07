
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_1__* au_ops; } ;
struct cred {int dummy; } ;
struct auth_cred {struct cred const* cred; } ;
typedef int acred ;
struct TYPE_2__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;


 struct cred* current_cred () ;
 int memset (struct auth_cred*,int ,int) ;
 struct rpc_cred* stub1 (struct rpc_auth*,struct auth_cred*,int) ;

struct rpc_cred *
rpcauth_lookupcred(struct rpc_auth *auth, int flags)
{
 struct auth_cred acred;
 struct rpc_cred *ret;
 const struct cred *cred = current_cred();

 memset(&acred, 0, sizeof(acred));
 acred.cred = cred;
 ret = auth->au_ops->lookup_cred(auth, &acred, flags);
 return ret;
}
