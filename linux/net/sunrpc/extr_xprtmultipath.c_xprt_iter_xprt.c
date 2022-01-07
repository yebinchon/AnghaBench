
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_iter {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct TYPE_2__ {struct rpc_xprt* (* xpi_xprt ) (struct rpc_xprt_iter*) ;} ;


 int WARN_ON_ONCE (int) ;
 int rcu_read_lock_held () ;
 struct rpc_xprt* stub1 (struct rpc_xprt_iter*) ;
 TYPE_1__* xprt_iter_ops (struct rpc_xprt_iter*) ;

struct rpc_xprt *xprt_iter_xprt(struct rpc_xprt_iter *xpi)
{
 WARN_ON_ONCE(!rcu_read_lock_held());
 return xprt_iter_ops(xpi)->xpi_xprt(xpi);
}
