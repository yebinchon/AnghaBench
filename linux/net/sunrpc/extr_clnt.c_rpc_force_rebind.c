
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_xprt; scalar_t__ cl_autobind; } ;


 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int xprt_clear_bound (int ) ;

void rpc_force_rebind(struct rpc_clnt *clnt)
{
 if (clnt->cl_autobind) {
  rcu_read_lock();
  xprt_clear_bound(rcu_dereference(clnt->cl_xprt));
  rcu_read_unlock();
 }
}
