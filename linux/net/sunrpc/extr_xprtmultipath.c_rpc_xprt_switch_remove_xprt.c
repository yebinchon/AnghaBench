
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_lock; } ;
struct rpc_xprt {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_put (struct rpc_xprt*) ;
 int xprt_switch_remove_xprt_locked (struct rpc_xprt_switch*,struct rpc_xprt*) ;

void rpc_xprt_switch_remove_xprt(struct rpc_xprt_switch *xps,
  struct rpc_xprt *xprt)
{
 spin_lock(&xps->xps_lock);
 xprt_switch_remove_xprt_locked(xps, xprt);
 spin_unlock(&xps->xps_lock);
 xprt_put(xprt);
}
