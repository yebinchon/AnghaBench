
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int rx_ia; int rx_buf; int rx_connect_worker; } ;
struct rpc_xprt {int dummy; } ;


 int THIS_MODULE ;
 int cancel_delayed_work_sync (int *) ;
 int module_put (int ) ;
 int rpcrdma_buffer_destroy (int *) ;
 int rpcrdma_ep_destroy (struct rpcrdma_xprt*) ;
 int rpcrdma_ia_close (int *) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int trace_xprtrdma_op_destroy (struct rpcrdma_xprt*) ;
 int xprt_free (struct rpc_xprt*) ;
 int xprt_rdma_free_addresses (struct rpc_xprt*) ;

__attribute__((used)) static void
xprt_rdma_destroy(struct rpc_xprt *xprt)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);

 trace_xprtrdma_op_destroy(r_xprt);

 cancel_delayed_work_sync(&r_xprt->rx_connect_worker);

 rpcrdma_ep_destroy(r_xprt);
 rpcrdma_buffer_destroy(&r_xprt->rx_buf);
 rpcrdma_ia_close(&r_xprt->rx_ia);

 xprt_rdma_free_addresses(xprt);
 xprt_free(xprt);

 module_put(THIS_MODULE);
}
