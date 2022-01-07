
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_iter {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct TYPE_2__ {int xpi_xprt; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct rpc_xprt* xprt_iter_get_helper (struct rpc_xprt_iter*,int ) ;
 TYPE_1__* xprt_iter_ops (struct rpc_xprt_iter*) ;

struct rpc_xprt *xprt_iter_get_xprt(struct rpc_xprt_iter *xpi)
{
 struct rpc_xprt *xprt;

 rcu_read_lock();
 xprt = xprt_iter_get_helper(xpi, xprt_iter_ops(xpi)->xpi_xprt);
 rcu_read_unlock();
 return xprt;
}
