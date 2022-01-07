
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_CWND_WAIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
xprt_need_congestion_window_wait(struct rpc_xprt *xprt)
{
 return test_bit(XPRT_CWND_WAIT, &xprt->state);
}
