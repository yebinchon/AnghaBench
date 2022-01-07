
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {TYPE_1__* rq_xprt; } ;
struct TYPE_2__ {int pending; } ;


 int rpc_sleep_on_timeout (int *,struct rpc_task*,int ,int ) ;
 int xprt_request_timeout (struct rpc_rqst*) ;
 int xprt_timer ;

void xprt_wait_for_reply_request_def(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;

 rpc_sleep_on_timeout(&req->rq_xprt->pending, task, xprt_timer,
   xprt_request_timeout(req));
}
