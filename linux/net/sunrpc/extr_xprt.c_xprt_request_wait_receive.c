
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int queue_lock; int pending; TYPE_1__* ops; } ;
struct rpc_task {int tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* wait_for_reply_request ) (struct rpc_task*) ;} ;


 int ENOTCONN ;
 int RPC_TASK_NEED_RECV ;
 int rpc_wake_up_queued_task_set_status (int *,struct rpc_task*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ xprt_request_retransmit_after_disconnect (struct rpc_task*) ;

void xprt_request_wait_receive(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (!test_bit(RPC_TASK_NEED_RECV, &task->tk_runstate))
  return;





 spin_lock(&xprt->queue_lock);
 if (test_bit(RPC_TASK_NEED_RECV, &task->tk_runstate)) {
  xprt->ops->wait_for_reply_request(task);





  if (xprt_request_retransmit_after_disconnect(task))
   rpc_wake_up_queued_task_set_status(&xprt->pending,
     task, -ENOTCONN);
 }
 spin_unlock(&xprt->queue_lock);
}
