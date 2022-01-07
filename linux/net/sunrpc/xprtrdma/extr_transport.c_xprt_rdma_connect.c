
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rep_connected; } ;
struct rpcrdma_xprt {int rx_connect_worker; TYPE_1__ rx_ep; } ;
struct rpc_xprt {int dummy; } ;
struct rpc_task {int dummy; } ;


 int RPCRDMA_INIT_REEST_TO ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int trace_xprtrdma_op_connect (struct rpcrdma_xprt*) ;
 int xprt_reconnect_backoff (struct rpc_xprt*,int ) ;
 unsigned long xprt_reconnect_delay (struct rpc_xprt*) ;
 int xprtiod_workqueue ;

__attribute__((used)) static void
xprt_rdma_connect(struct rpc_xprt *xprt, struct rpc_task *task)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 unsigned long delay;

 trace_xprtrdma_op_connect(r_xprt);

 delay = 0;
 if (r_xprt->rx_ep.rep_connected != 0) {
  delay = xprt_reconnect_delay(xprt);
  xprt_reconnect_backoff(xprt, RPCRDMA_INIT_REEST_TO);
 }
 queue_delayed_work(xprtiod_workqueue, &r_xprt->rx_connect_worker,
      delay);
}
