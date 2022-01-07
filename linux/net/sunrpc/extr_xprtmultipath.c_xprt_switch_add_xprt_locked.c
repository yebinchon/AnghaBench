
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {scalar_t__ xps_nxprts; int xps_nactive; int xps_net; int xps_xprt_list; } ;
struct rpc_xprt {int xprt_net; int xprt_switch; } ;


 int list_add_tail_rcu (int *,int *) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int ) ;
 int * xprt_get (struct rpc_xprt*) ;

__attribute__((used)) static void xprt_switch_add_xprt_locked(struct rpc_xprt_switch *xps,
  struct rpc_xprt *xprt)
{
 if (unlikely(xprt_get(xprt) == ((void*)0)))
  return;
 list_add_tail_rcu(&xprt->xprt_switch, &xps->xps_xprt_list);
 smp_wmb();
 if (xps->xps_nxprts == 0)
  xps->xps_net = xprt->xprt_net;
 xps->xps_nxprts++;
 xps->xps_nactive++;
}
