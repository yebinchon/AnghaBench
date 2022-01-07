
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpi_xpswitch; } ;
struct rpc_clnt {TYPE_1__ cl_xpi; } ;


 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xprt_switch_put (int ) ;

void rpc_clnt_xprt_switch_put(struct rpc_clnt *clnt)
{
 rcu_read_lock();
 xprt_switch_put(rcu_dereference(clnt->cl_xpi.xpi_xpswitch));
 rcu_read_unlock();
}
