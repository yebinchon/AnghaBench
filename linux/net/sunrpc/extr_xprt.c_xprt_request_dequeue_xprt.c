
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int queue_lock; } ;
struct rpc_task {int tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;


 int RPC_TASK_MSG_PIN_WAIT ;
 int RPC_TASK_NEED_RECV ;
 int RPC_TASK_NEED_XMIT ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ xprt_is_pinned_rqst (struct rpc_rqst*) ;
 int xprt_request_dequeue_receive_locked (struct rpc_task*) ;
 int xprt_request_dequeue_transmit_locked (struct rpc_task*) ;
 int xprt_wait_on_pinned_rqst (struct rpc_rqst*) ;

void
xprt_request_dequeue_xprt(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate) ||
     test_bit(RPC_TASK_NEED_RECV, &task->tk_runstate) ||
     xprt_is_pinned_rqst(req)) {
  spin_lock(&xprt->queue_lock);
  xprt_request_dequeue_transmit_locked(task);
  xprt_request_dequeue_receive_locked(task);
  while (xprt_is_pinned_rqst(req)) {
   set_bit(RPC_TASK_MSG_PIN_WAIT, &task->tk_runstate);
   spin_unlock(&xprt->queue_lock);
   xprt_wait_on_pinned_rqst(req);
   spin_lock(&xprt->queue_lock);
   clear_bit(RPC_TASK_MSG_PIN_WAIT, &task->tk_runstate);
  }
  spin_unlock(&xprt->queue_lock);
 }
}
