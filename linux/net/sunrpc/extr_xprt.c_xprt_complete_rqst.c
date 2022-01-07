
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recvs; } ;
struct rpc_xprt {int pending; TYPE_1__ stat; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct TYPE_4__ {int len; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; TYPE_2__ rq_private_buf; int rq_xid; struct rpc_xprt* rq_xprt; } ;


 int dprintk (char*,int ,int ,int) ;
 int ntohl (int ) ;
 int rpc_wake_up_queued_task (int *,struct rpc_task*) ;
 int smp_wmb () ;
 int trace_xprt_complete_rqst (struct rpc_xprt*,int ,int) ;
 int xprt_request_dequeue_receive_locked (struct rpc_task*) ;

void xprt_complete_rqst(struct rpc_task *task, int copied)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 dprintk("RPC: %5u xid %08x complete (%d bytes received)\n",
   task->tk_pid, ntohl(req->rq_xid), copied);
 trace_xprt_complete_rqst(xprt, req->rq_xid, copied);

 xprt->stat.recvs++;

 req->rq_private_buf.len = copied;


 smp_wmb();
 req->rq_reply_bytes_recvd = copied;
 xprt_request_dequeue_receive_locked(task);
 rpc_wake_up_queued_task(&xprt->pending, task);
}
