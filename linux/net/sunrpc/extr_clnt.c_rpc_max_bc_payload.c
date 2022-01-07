
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_clnt {int cl_xprt; } ;
struct TYPE_2__ {size_t (* bc_maxpayload ) (struct rpc_xprt*) ;} ;


 struct rpc_xprt* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 size_t stub1 (struct rpc_xprt*) ;

size_t rpc_max_bc_payload(struct rpc_clnt *clnt)
{
 struct rpc_xprt *xprt;
 size_t ret;

 rcu_read_lock();
 xprt = rcu_dereference(clnt->cl_xprt);
 ret = xprt->ops->bc_maxpayload(xprt);
 rcu_read_unlock();
 return ret;
}
