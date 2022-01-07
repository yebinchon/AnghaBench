
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rpc_xprt_switch {int dummy; } ;
struct TYPE_2__ {int xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;


 struct rpc_xprt_switch* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rpc_xprt_switch_has_addr (struct rpc_xprt_switch*,struct sockaddr const*) ;

bool rpc_clnt_xprt_switch_has_addr(struct rpc_clnt *clnt,
       const struct sockaddr *sap)
{
 struct rpc_xprt_switch *xps;
 bool ret;

 rcu_read_lock();
 xps = rcu_dereference(clnt->cl_xpi.xpi_xpswitch);
 ret = rpc_xprt_switch_has_addr(xps, sap);
 rcu_read_unlock();
 return ret;
}
