
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_clnt {int cl_xprt; } ;
struct TYPE_2__ {size_t max_payload; } ;


 TYPE_1__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

size_t rpc_max_payload(struct rpc_clnt *clnt)
{
 size_t ret;

 rcu_read_lock();
 ret = rcu_dereference(clnt->cl_xprt)->max_payload;
 rcu_read_unlock();
 return ret;
}
