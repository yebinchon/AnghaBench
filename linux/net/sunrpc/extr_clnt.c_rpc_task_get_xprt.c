
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt_switch {int xps_queuelen; } ;
struct rpc_xprt {int queuelen; } ;
struct TYPE_2__ {int xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;


 int atomic_long_inc (int *) ;
 struct rpc_xprt_switch* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct rpc_xprt *
rpc_task_get_xprt(struct rpc_clnt *clnt, struct rpc_xprt *xprt)
{
 struct rpc_xprt_switch *xps;

 if (!xprt)
  return ((void*)0);
 rcu_read_lock();
 xps = rcu_dereference(clnt->cl_xpi.xpi_xpswitch);
 atomic_long_inc(&xps->xps_queuelen);
 rcu_read_unlock();
 atomic_long_inc(&xprt->queuelen);

 return xprt;
}
