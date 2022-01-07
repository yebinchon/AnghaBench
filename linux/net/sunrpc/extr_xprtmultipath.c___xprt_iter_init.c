
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter_ops {int dummy; } ;
struct rpc_xprt_iter {struct rpc_xprt_iter_ops const* xpi_ops; int * xpi_cursor; int xpi_xpswitch; } ;


 int rcu_assign_pointer (int ,int ) ;
 int xprt_switch_get (struct rpc_xprt_switch*) ;

__attribute__((used)) static void __xprt_iter_init(struct rpc_xprt_iter *xpi,
  struct rpc_xprt_switch *xps,
  const struct rpc_xprt_iter_ops *ops)
{
 rcu_assign_pointer(xpi->xpi_xpswitch, xprt_switch_get(xps));
 xpi->xpi_cursor = ((void*)0);
 xpi->xpi_ops = ops;
}
