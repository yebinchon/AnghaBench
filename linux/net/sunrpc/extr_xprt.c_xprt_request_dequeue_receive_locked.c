
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_xprt; } ;


 int RPC_TASK_NEED_RECV ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xprt_request_rb_remove (int ,struct rpc_rqst*) ;

__attribute__((used)) static void
xprt_request_dequeue_receive_locked(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;

 if (test_and_clear_bit(RPC_TASK_NEED_RECV, &task->tk_runstate))
  xprt_request_rb_remove(req->rq_xprt, req);
}
