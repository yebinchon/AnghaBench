
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {scalar_t__ xps_nxprts; int * xps_net; int xps_nactive; } ;
struct rpc_xprt {int xprt_switch; } ;


 int list_del_rcu (int *) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void xprt_switch_remove_xprt_locked(struct rpc_xprt_switch *xps,
  struct rpc_xprt *xprt)
{
 if (unlikely(xprt == ((void*)0)))
  return;
 xps->xps_nactive--;
 xps->xps_nxprts--;
 if (xps->xps_nxprts == 0)
  xps->xps_net = ((void*)0);
 smp_wmb();
 list_del_rcu(&xprt->xprt_switch);
}
