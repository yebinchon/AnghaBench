
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int timer; int queue_lock; } ;
struct rpc_task {int tk_runstate; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_rcv_buf; int rq_private_buf; struct rpc_xprt* rq_xprt; } ;


 int RPC_TASK_NEED_RECV ;
 int del_singleshot_timer_sync (int *) ;
 int memcpy (int *,int *,int) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_request_need_enqueue_receive (struct rpc_task*,struct rpc_rqst*) ;
 int xprt_request_prepare (struct rpc_rqst*) ;
 int xprt_request_rb_insert (struct rpc_xprt*,struct rpc_rqst*) ;

void
xprt_request_enqueue_receive(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (!xprt_request_need_enqueue_receive(task, req))
  return;

 xprt_request_prepare(task->tk_rqstp);
 spin_lock(&xprt->queue_lock);


 memcpy(&req->rq_private_buf, &req->rq_rcv_buf,
   sizeof(req->rq_private_buf));


 xprt_request_rb_insert(xprt, req);
 set_bit(RPC_TASK_NEED_RECV, &task->tk_runstate);
 spin_unlock(&xprt->queue_lock);


 del_singleshot_timer_sync(&xprt->timer);
}
