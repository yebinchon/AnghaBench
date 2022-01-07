
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ri_id; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ia; } ;
struct rpc_xprt {int dummy; } ;


 int rdma_disconnect (int ) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int trace_xprtrdma_op_inject_dsc (struct rpcrdma_xprt*) ;

__attribute__((used)) static void
xprt_rdma_inject_disconnect(struct rpc_xprt *xprt)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);

 trace_xprtrdma_op_inject_dsc(r_xprt);
 rdma_disconnect(r_xprt->rx_ia.ri_id);
}
