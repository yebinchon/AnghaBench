
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int rx_buf; } ;
struct rpcrdma_req {int rl_slot; } ;
struct rpc_xprt {int backlog; int state; } ;
struct rpc_task {int tk_status; int * tk_rqstp; } ;


 int EAGAIN ;
 int XPRT_CONGESTED ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 struct rpcrdma_req* rpcrdma_buffer_get (int *) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
xprt_rdma_alloc_slot(struct rpc_xprt *xprt, struct rpc_task *task)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 struct rpcrdma_req *req;

 req = rpcrdma_buffer_get(&r_xprt->rx_buf);
 if (!req)
  goto out_sleep;
 task->tk_rqstp = &req->rl_slot;
 task->tk_status = 0;
 return;

out_sleep:
 set_bit(XPRT_CONGESTED, &xprt->state);
 rpc_sleep_on(&xprt->backlog, task, ((void*)0));
 task->tk_status = -EAGAIN;
}
