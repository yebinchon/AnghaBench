
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_clnt {int cl_xprt; } ;


 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct rpc_xprt* rpc_task_get_xprt (struct rpc_clnt*,struct rpc_xprt*) ;
 struct rpc_xprt* xprt_get (int ) ;

__attribute__((used)) static struct rpc_xprt *
rpc_task_get_first_xprt(struct rpc_clnt *clnt)
{
 struct rpc_xprt *xprt;

 rcu_read_lock();
 xprt = xprt_get(rcu_dereference(clnt->cl_xprt));
 rcu_read_unlock();
 return rpc_task_get_xprt(clnt, xprt);
}
