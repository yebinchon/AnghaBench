
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int queue_lock; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_request_dequeue_transmit_locked (struct rpc_task*) ;

__attribute__((used)) static void
xprt_request_dequeue_transmit(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 spin_lock(&xprt->queue_lock);
 xprt_request_dequeue_transmit_locked(task);
 spin_unlock(&xprt->queue_lock);
}
