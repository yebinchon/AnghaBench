
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_bc_srv_max_requests; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; } ;
struct rpc_xprt {int dummy; } ;


 int RPCRDMA_BACKWARD_WRS ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int trace_xprtrdma_cb_setup (struct rpcrdma_xprt*,unsigned int) ;

int xprt_rdma_bc_setup(struct rpc_xprt *xprt, unsigned int reqs)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);

 r_xprt->rx_buf.rb_bc_srv_max_requests = RPCRDMA_BACKWARD_WRS >> 1;
 trace_xprtrdma_cb_setup(r_xprt, reqs);
 return 0;
}
