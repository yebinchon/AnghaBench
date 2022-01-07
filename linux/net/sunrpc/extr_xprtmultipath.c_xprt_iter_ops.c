
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_iter_ops {int dummy; } ;
struct rpc_xprt_iter {int xpi_xpswitch; struct rpc_xprt_iter_ops const* xpi_ops; } ;
struct TYPE_2__ {struct rpc_xprt_iter_ops const* xps_iter_ops; } ;


 TYPE_1__* rcu_dereference (int ) ;

__attribute__((used)) static
const struct rpc_xprt_iter_ops *xprt_iter_ops(const struct rpc_xprt_iter *xpi)
{
 if (xpi->xpi_ops != ((void*)0))
  return xpi->xpi_ops;
 return rcu_dereference(xpi->xpi_xpswitch)->xps_iter_ops;
}
