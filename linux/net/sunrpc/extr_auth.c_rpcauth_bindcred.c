
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_op_cred; TYPE_1__* tk_client; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_cred* rq_cred; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct cred {int dummy; } ;
struct auth_cred {struct cred const* cred; } ;
struct TYPE_6__ {struct rpc_cred* (* lookup_cred ) (int *,int *,int ) ;} ;
struct TYPE_5__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;
struct TYPE_4__ {struct rpc_auth* cl_auth; } ;


 scalar_t__ IS_ERR (struct rpc_cred*) ;
 int PTR_ERR (struct rpc_cred*) ;
 int RPCAUTH_LOOKUP_NEW ;
 int RPC_TASK_ASYNC ;
 int RPC_TASK_NULLCREDS ;
 int RPC_TASK_ROOTCREDS ;
 TYPE_3__ authnull_ops ;
 struct rpc_cred* get_rpccred (scalar_t__) ;
 struct cred const machine_cred ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpcauth_bind_machine_cred (struct rpc_task*,int) ;
 struct rpc_cred* rpcauth_bind_new_cred (struct rpc_task*,int) ;
 struct rpc_cred* rpcauth_bind_root_cred (struct rpc_task*,int) ;
 struct rpc_cred* stub1 (struct rpc_auth*,struct auth_cred*,int) ;
 struct rpc_cred* stub2 (int *,int *,int ) ;

__attribute__((used)) static int
rpcauth_bindcred(struct rpc_task *task, const struct cred *cred, int flags)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_cred *new = ((void*)0);
 int lookupflags = 0;
 struct rpc_auth *auth = task->tk_client->cl_auth;
 struct auth_cred acred = {
  .cred = cred,
 };

 if (flags & RPC_TASK_ASYNC)
  lookupflags |= RPCAUTH_LOOKUP_NEW;
 if (task->tk_op_cred)

  new = get_rpccred(task->tk_op_cred);
 else if (cred != ((void*)0) && cred != &machine_cred)
  new = auth->au_ops->lookup_cred(auth, &acred, lookupflags);
 else if (cred == &machine_cred)
  new = rpcauth_bind_machine_cred(task, lookupflags);


 if (new)
  ;
 else if (cred == &machine_cred || (flags & RPC_TASK_ROOTCREDS))
  new = rpcauth_bind_root_cred(task, lookupflags);
 else if (flags & RPC_TASK_NULLCREDS)
  new = authnull_ops.lookup_cred(((void*)0), ((void*)0), 0);
 else
  new = rpcauth_bind_new_cred(task, lookupflags);
 if (IS_ERR(new))
  return PTR_ERR(new);
 put_rpccred(req->rq_cred);
 req->rq_cred = new;
 return 0;
}
