
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; int transport_lock; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; struct rpc_xprt* tk_xprt; scalar_t__ tk_client; } ;
struct rpc_rqst {int (* rq_release_snd_buf ) (struct rpc_rqst*) ;int * rq_cred; int rq_snd_buf; int rq_rcv_buf; scalar_t__ rq_buffer; struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* free_slot ) (struct rpc_xprt*,struct rpc_rqst*) ;int (* buf_free ) (struct rpc_task*) ;int (* release_request ) (struct rpc_task*) ;int (* release_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int bc_prealloc (struct rpc_rqst*) ;
 int dprintk (char*,int ,struct rpc_rqst*) ;
 scalar_t__ likely (int) ;
 int put_rpccred (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;
 int stub2 (struct rpc_task*) ;
 int stub3 (struct rpc_task*) ;
 int stub4 (struct rpc_rqst*) ;
 int stub5 (struct rpc_xprt*,struct rpc_rqst*) ;
 int xdr_free_bvec (int *) ;
 int xprt_free_bc_request (struct rpc_rqst*) ;
 int xprt_inject_disconnect (struct rpc_xprt*) ;
 int xprt_release_write (struct rpc_xprt*,struct rpc_task*) ;
 int xprt_request_dequeue_xprt (struct rpc_task*) ;
 int xprt_schedule_autodisconnect (struct rpc_xprt*) ;

void xprt_release(struct rpc_task *task)
{
 struct rpc_xprt *xprt;
 struct rpc_rqst *req = task->tk_rqstp;

 if (req == ((void*)0)) {
  if (task->tk_client) {
   xprt = task->tk_xprt;
   xprt_release_write(xprt, task);
  }
  return;
 }

 xprt = req->rq_xprt;
 xprt_request_dequeue_xprt(task);
 spin_lock(&xprt->transport_lock);
 xprt->ops->release_xprt(xprt, task);
 if (xprt->ops->release_request)
  xprt->ops->release_request(task);
 xprt_schedule_autodisconnect(xprt);
 spin_unlock(&xprt->transport_lock);
 if (req->rq_buffer)
  xprt->ops->buf_free(task);
 xprt_inject_disconnect(xprt);
 xdr_free_bvec(&req->rq_rcv_buf);
 xdr_free_bvec(&req->rq_snd_buf);
 if (req->rq_cred != ((void*)0))
  put_rpccred(req->rq_cred);
 task->tk_rqstp = ((void*)0);
 if (req->rq_release_snd_buf)
  req->rq_release_snd_buf(req);

 dprintk("RPC: %5u release request %p\n", task->tk_pid, req);
 if (likely(!bc_prealloc(req)))
  xprt->ops->free_slot(xprt, req);
 else
  xprt_free_bc_request(req);
}
