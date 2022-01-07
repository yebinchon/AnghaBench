
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_req {int * rl_reply; } ;
struct rpc_xprt {int bc_pa_lock; int bc_pa_list; } ;
struct rpc_rqst {int rq_bc_pa_list; struct rpc_xprt* rq_xprt; } ;


 int list_add_tail (int *,int *) ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 int rpcrdma_recv_buffer_put (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_put (struct rpc_xprt*) ;

void xprt_rdma_bc_free_rqst(struct rpc_rqst *rqst)
{
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 struct rpc_xprt *xprt = rqst->rq_xprt;

 rpcrdma_recv_buffer_put(req->rl_reply);
 req->rl_reply = ((void*)0);

 spin_lock(&xprt->bc_pa_lock);
 list_add_tail(&rqst->rq_bc_pa_list, &xprt->bc_pa_list);
 spin_unlock(&xprt->bc_pa_lock);
 xprt_put(xprt);
}
