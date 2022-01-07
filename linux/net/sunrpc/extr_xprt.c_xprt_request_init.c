
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_xprt {int dummy; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; struct rpc_xprt* tk_xprt; } ;
struct TYPE_4__ {int * bvec; scalar_t__ buflen; scalar_t__ len; } ;
struct TYPE_3__ {int * bvec; scalar_t__ buflen; scalar_t__ len; } ;
struct rpc_rqst {int rq_xid; int * rq_release_snd_buf; TYPE_2__ rq_rcv_buf; TYPE_1__ rq_snd_buf; int * rq_buffer; struct rpc_xprt* rq_xprt; struct rpc_task* rq_task; } ;


 int dprintk (char*,int ,struct rpc_rqst*,int ) ;
 int ntohl (int ) ;
 int xprt_alloc_xid (struct rpc_xprt*) ;
 int xprt_init_connect_cookie (struct rpc_rqst*,struct rpc_xprt*) ;
 int xprt_init_majortimeo (struct rpc_task*,struct rpc_rqst*) ;

__attribute__((used)) static void
xprt_request_init(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;
 struct rpc_rqst *req = task->tk_rqstp;

 req->rq_task = task;
 req->rq_xprt = xprt;
 req->rq_buffer = ((void*)0);
 req->rq_xid = xprt_alloc_xid(xprt);
 xprt_init_connect_cookie(req, xprt);
 req->rq_snd_buf.len = 0;
 req->rq_snd_buf.buflen = 0;
 req->rq_rcv_buf.len = 0;
 req->rq_rcv_buf.buflen = 0;
 req->rq_snd_buf.bvec = ((void*)0);
 req->rq_rcv_buf.bvec = ((void*)0);
 req->rq_release_snd_buf = ((void*)0);
 xprt_init_majortimeo(task, req);
 dprintk("RPC: %5u reserved req %p xid %08x\n", task->tk_pid,
   req, ntohl(req->rq_xid));
}
