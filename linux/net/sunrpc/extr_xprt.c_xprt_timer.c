
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_task {int tk_status; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; int rq_xid; struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* timer ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int ETIMEDOUT ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;
 int trace_xprt_timer (struct rpc_xprt*,int ,int ) ;

__attribute__((used)) static void xprt_timer(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (task->tk_status != -ETIMEDOUT)
  return;

 trace_xprt_timer(xprt, req->rq_xid, task->tk_status);
 if (!req->rq_reply_bytes_recvd) {
  if (xprt->ops->timer)
   xprt->ops->timer(xprt, task);
 } else
  task->tk_status = 0;
}
