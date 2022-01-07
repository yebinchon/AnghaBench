
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int RPCXPRT_CONGESTED (struct rpc_xprt*) ;
 int XPRT_CWND_WAIT ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void
xprt_test_and_clear_congestion_window_wait(struct rpc_xprt *xprt)
{
 if (!RPCXPRT_CONGESTED(xprt))
  clear_bit(XPRT_CWND_WAIT, &xprt->state);
}
