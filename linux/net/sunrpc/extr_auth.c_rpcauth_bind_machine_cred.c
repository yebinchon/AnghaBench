
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_client; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct auth_cred {int principal; int cred; } ;
struct TYPE_6__ {int cred; } ;
struct TYPE_5__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;
struct TYPE_4__ {int cl_principal; struct rpc_auth* cl_auth; } ;


 TYPE_3__ init_task ;
 struct rpc_cred* stub1 (struct rpc_auth*,struct auth_cred*,int) ;

__attribute__((used)) static struct rpc_cred *
rpcauth_bind_machine_cred(struct rpc_task *task, int lookupflags)
{
 struct rpc_auth *auth = task->tk_client->cl_auth;
 struct auth_cred acred = {
  .principal = task->tk_client->cl_principal,
  .cred = init_task.cred,
 };

 if (!acred.principal)
  return ((void*)0);
 return auth->au_ops->lookup_cred(auth, &acred, lookupflags);
}
