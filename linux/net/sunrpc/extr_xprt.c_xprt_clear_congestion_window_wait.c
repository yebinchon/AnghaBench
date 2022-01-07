
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; int state; } ;


 int XPRT_CWND_WAIT ;
 int __xprt_lock_write_next_cong (struct rpc_xprt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
xprt_clear_congestion_window_wait(struct rpc_xprt *xprt)
{
 if (test_and_clear_bit(XPRT_CWND_WAIT, &xprt->state)) {
  spin_lock(&xprt->transport_lock);
  __xprt_lock_write_next_cong(xprt);
  spin_unlock(&xprt->transport_lock);
 }
}
