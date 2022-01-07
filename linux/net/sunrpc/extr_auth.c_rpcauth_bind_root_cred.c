
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_client; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct auth_cred {int cred; } ;
struct TYPE_4__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;
struct TYPE_3__ {struct rpc_auth* cl_auth; } ;


 int get_task_cred (int *) ;
 int init_task ;
 int put_cred (int ) ;
 struct rpc_cred* stub1 (struct rpc_auth*,struct auth_cred*,int) ;

__attribute__((used)) static struct rpc_cred *
rpcauth_bind_root_cred(struct rpc_task *task, int lookupflags)
{
 struct rpc_auth *auth = task->tk_client->cl_auth;
 struct auth_cred acred = {
  .cred = get_task_cred(&init_task),
 };
 struct rpc_cred *ret;

 ret = auth->au_ops->lookup_cred(auth, &acred, lookupflags);
 put_cred(acred.cred);
 return ret;
}
