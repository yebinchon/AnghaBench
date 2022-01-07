
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_iter {int dummy; } ;
struct TYPE_2__ {int (* xpi_rewind ) (struct rpc_xprt_iter*) ;} ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct rpc_xprt_iter*) ;
 TYPE_1__* xprt_iter_ops (struct rpc_xprt_iter*) ;

__attribute__((used)) static
void xprt_iter_rewind(struct rpc_xprt_iter *xpi)
{
 rcu_read_lock();
 xprt_iter_ops(xpi)->xpi_rewind(xpi);
 rcu_read_unlock();
}
