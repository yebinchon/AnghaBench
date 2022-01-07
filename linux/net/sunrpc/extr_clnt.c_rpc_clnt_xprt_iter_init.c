
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter {int dummy; } ;
struct TYPE_2__ {int xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;


 int EAGAIN ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xprt_iter_init_listall (struct rpc_xprt_iter*,struct rpc_xprt_switch*) ;
 struct rpc_xprt_switch* xprt_switch_get (int ) ;
 int xprt_switch_put (struct rpc_xprt_switch*) ;

__attribute__((used)) static
int rpc_clnt_xprt_iter_init(struct rpc_clnt *clnt, struct rpc_xprt_iter *xpi)
{
 struct rpc_xprt_switch *xps;

 rcu_read_lock();
 xps = xprt_switch_get(rcu_dereference(clnt->cl_xpi.xpi_xpswitch));
 rcu_read_unlock();
 if (xps == ((void*)0))
  return -EAGAIN;
 xprt_iter_init_listall(xpi, xps);
 xprt_switch_put(xps);
 return 0;
}
