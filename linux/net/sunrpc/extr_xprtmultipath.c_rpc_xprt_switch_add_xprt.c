
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_lock; int * xps_net; } ;
struct rpc_xprt {int * xprt_net; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_switch_add_xprt_locked (struct rpc_xprt_switch*,struct rpc_xprt*) ;

void rpc_xprt_switch_add_xprt(struct rpc_xprt_switch *xps,
  struct rpc_xprt *xprt)
{
 if (xprt == ((void*)0))
  return;
 spin_lock(&xps->xps_lock);
 if (xps->xps_net == xprt->xprt_net || xps->xps_net == ((void*)0))
  xprt_switch_add_xprt_locked(xps, xprt);
 spin_unlock(&xps->xps_lock);
}
