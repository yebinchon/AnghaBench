
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_credits; } ;
struct rpcrdma_ia {int ri_flags; } ;
struct rpcrdma_ep {int rep_connected; } ;
struct rpcrdma_xprt {TYPE_1__ rx_buf; struct rpcrdma_ia rx_ia; struct rpcrdma_ep rx_ep; } ;
struct rpc_xprt {int connect_cookie; scalar_t__ reestablish_timeout; int cwnd; } ;


 int ENODEV ;
 int RPCRDMA_IAF_REMOVING ;
 int RPC_CWNDSHIFT ;
 int might_sleep () ;
 int rpcrdma_ep_disconnect (struct rpcrdma_ep*,struct rpcrdma_ia*) ;
 int rpcrdma_ia_remove (struct rpcrdma_ia*) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int trace_xprtrdma_op_close (struct rpcrdma_xprt*) ;
 int xprt_clear_connected (struct rpc_xprt*) ;
 int xprt_disconnect_done (struct rpc_xprt*) ;

void xprt_rdma_close(struct rpc_xprt *xprt)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 struct rpcrdma_ep *ep = &r_xprt->rx_ep;
 struct rpcrdma_ia *ia = &r_xprt->rx_ia;

 might_sleep();

 trace_xprtrdma_op_close(r_xprt);


 xprt_clear_connected(xprt);

 if (test_and_clear_bit(RPCRDMA_IAF_REMOVING, &ia->ri_flags)) {
  rpcrdma_ia_remove(ia);
  goto out;
 }

 if (ep->rep_connected == -ENODEV)
  return;
 rpcrdma_ep_disconnect(ep, ia);




 r_xprt->rx_buf.rb_credits = 1;
 xprt->cwnd = RPC_CWNDSHIFT;

out:
 xprt->reestablish_timeout = 0;
 ++xprt->connect_cookie;
 xprt_disconnect_done(xprt);
}
