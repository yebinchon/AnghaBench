
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int dummy; } ;
struct rpcrdma_req {int rl_recvbuf; int rl_sendbuf; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {void* rq_rbuffer; void* rq_buffer; int rq_rcvsize; int rq_callsize; int rq_xprt; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_NOWAIT ;
 int RPCRDMA_DEF_GFP ;
 scalar_t__ RPC_IS_SWAPPER (struct rpc_task*) ;
 int __GFP_MEMALLOC ;
 int __GFP_NOWARN ;
 void* rdmab_data (int ) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 int rpcrdma_check_regbuf (struct rpcrdma_xprt*,int ,int ,int) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (int ) ;
 int trace_xprtrdma_op_allocate (struct rpc_task*,struct rpcrdma_req*) ;

__attribute__((used)) static int
xprt_rdma_allocate(struct rpc_task *task)
{
 struct rpc_rqst *rqst = task->tk_rqstp;
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(rqst->rq_xprt);
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 gfp_t flags;

 flags = RPCRDMA_DEF_GFP;
 if (RPC_IS_SWAPPER(task))
  flags = __GFP_MEMALLOC | GFP_NOWAIT | __GFP_NOWARN;

 if (!rpcrdma_check_regbuf(r_xprt, req->rl_sendbuf, rqst->rq_callsize,
      flags))
  goto out_fail;
 if (!rpcrdma_check_regbuf(r_xprt, req->rl_recvbuf, rqst->rq_rcvsize,
      flags))
  goto out_fail;

 rqst->rq_buffer = rdmab_data(req->rl_sendbuf);
 rqst->rq_rbuffer = rdmab_data(req->rl_recvbuf);
 trace_xprtrdma_op_allocate(task, req);
 return 0;

out_fail:
 trace_xprtrdma_op_allocate(task, ((void*)0));
 return -ENOMEM;
}
