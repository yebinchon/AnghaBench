
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int dummy; } ;
struct rpcrdma_req {int rl_registered; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_xprt; } ;


 int frwr_unmap_sync (struct rpcrdma_xprt*,struct rpcrdma_req*) ;
 int list_empty (int *) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (int ) ;
 int trace_xprtrdma_op_free (struct rpc_task*,struct rpcrdma_req*) ;

__attribute__((used)) static void
xprt_rdma_free(struct rpc_task *task)
{
 struct rpc_rqst *rqst = task->tk_rqstp;
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(rqst->rq_xprt);
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);

 trace_xprtrdma_op_free(task, req);

 if (!list_empty(&req->rl_registered))
  frwr_unmap_sync(r_xprt, req);






}
