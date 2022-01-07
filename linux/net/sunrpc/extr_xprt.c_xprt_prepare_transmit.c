
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int sending; } ;
struct rpc_task {int tk_runstate; int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;


 int RPC_TASK_NEED_XMIT ;
 int dprintk (char*,int ) ;
 int rpc_wake_up_queued_task_set_status (int *,struct rpc_task*,int ) ;
 int test_bit (int ,int *) ;
 int xprt_lock_write (struct rpc_xprt*,struct rpc_task*) ;

bool xprt_prepare_transmit(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 dprintk("RPC: %5u xprt_prepare_transmit\n", task->tk_pid);

 if (!xprt_lock_write(xprt, task)) {

  if (!test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate))
   rpc_wake_up_queued_task_set_status(&xprt->sending,
     task, 0);
  return 0;

 }
 return 1;
}
