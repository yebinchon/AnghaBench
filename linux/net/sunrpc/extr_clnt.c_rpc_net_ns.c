
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_clnt {int cl_xprt; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net* xprt_net; } ;


 TYPE_1__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct net *rpc_net_ns(struct rpc_clnt *clnt)
{
 struct net *ret;

 rcu_read_lock();
 ret = rcu_dereference(clnt->cl_xprt)->xprt_net;
 rcu_read_unlock();
 return ret;
}
