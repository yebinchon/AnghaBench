
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xprt_switch_find_xprt_t ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter {int xpi_cursor; int xpi_xpswitch; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt_switch* rcu_dereference (int ) ;
 struct rpc_xprt* xprt_switch_set_next_cursor (struct rpc_xprt_switch*,int *,int ) ;

__attribute__((used)) static
struct rpc_xprt *xprt_iter_next_entry_multiple(struct rpc_xprt_iter *xpi,
  xprt_switch_find_xprt_t find_next)
{
 struct rpc_xprt_switch *xps = rcu_dereference(xpi->xpi_xpswitch);

 if (xps == ((void*)0))
  return ((void*)0);
 return xprt_switch_set_next_cursor(xps, &xpi->xpi_cursor, find_next);
}
