
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_task {TYPE_2__* tk_rqstp; } ;
struct rpc_credops {int (* crunwrap_resp ) (struct rpc_task*,struct xdr_stream*) ;} ;
struct TYPE_4__ {TYPE_1__* rq_cred; } ;
struct TYPE_3__ {struct rpc_credops* cr_ops; } ;


 int stub1 (struct rpc_task*,struct xdr_stream*) ;

int
rpcauth_unwrap_resp(struct rpc_task *task, struct xdr_stream *xdr)
{
 const struct rpc_credops *ops = task->tk_rqstp->rq_cred->cr_ops;

 return ops->crunwrap_resp(task, xdr);
}
