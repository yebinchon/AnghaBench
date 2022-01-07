
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_xprt_list; } ;
struct rpc_xprt_iter {int xpi_xpswitch; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt_switch* rcu_dereference (int ) ;
 struct rpc_xprt* xprt_switch_find_first_entry (int *) ;

__attribute__((used)) static
struct rpc_xprt *xprt_iter_first_entry(struct rpc_xprt_iter *xpi)
{
 struct rpc_xprt_switch *xps = rcu_dereference(xpi->xpi_xpswitch);

 if (xps == ((void*)0))
  return ((void*)0);
 return xprt_switch_find_first_entry(&xps->xps_xprt_list);
}
