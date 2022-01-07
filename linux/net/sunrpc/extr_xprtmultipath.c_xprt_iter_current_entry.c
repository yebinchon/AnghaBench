
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct rpc_xprt_switch {int xps_nxprts; struct list_head xps_xprt_list; } ;
struct rpc_xprt_iter {int * xpi_cursor; int xpi_xpswitch; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt_switch* rcu_dereference (int ) ;
 struct rpc_xprt* xprt_switch_find_current_entry (struct list_head*,int *) ;
 struct rpc_xprt* xprt_switch_find_first_entry (struct list_head*) ;

__attribute__((used)) static
struct rpc_xprt *xprt_iter_current_entry(struct rpc_xprt_iter *xpi)
{
 struct rpc_xprt_switch *xps = rcu_dereference(xpi->xpi_xpswitch);
 struct list_head *head;

 if (xps == ((void*)0))
  return ((void*)0);
 head = &xps->xps_xprt_list;
 if (xpi->xpi_cursor == ((void*)0) || xps->xps_nxprts < 2)
  return xprt_switch_find_first_entry(head);
 return xprt_switch_find_current_entry(head, xpi->xpi_cursor);
}
