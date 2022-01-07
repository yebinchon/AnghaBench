
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_clnt {int cl_xprt; } ;
struct TYPE_2__ {int (* set_buffer_size ) (struct rpc_xprt*,unsigned int,unsigned int) ;} ;


 struct rpc_xprt* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct rpc_xprt*,unsigned int,unsigned int) ;

void
rpc_setbufsize(struct rpc_clnt *clnt, unsigned int sndsize, unsigned int rcvsize)
{
 struct rpc_xprt *xprt;

 rcu_read_lock();
 xprt = rcu_dereference(clnt->cl_xprt);
 if (xprt->ops->set_buffer_size)
  xprt->ops->set_buffer_size(xprt, sndsize, rcvsize);
 rcu_read_unlock();
}
