
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;


 int __rtnl_link_unregister (struct rtnl_link_ops*) ;
 int down_write (int *) ;
 int pernet_ops_rwsem ;
 int rtnl_lock_unregistering_all () ;
 int rtnl_unlock () ;
 int up_write (int *) ;

void rtnl_link_unregister(struct rtnl_link_ops *ops)
{

 down_write(&pernet_ops_rwsem);
 rtnl_lock_unregistering_all();
 __rtnl_link_unregister(ops);
 rtnl_unlock();
 up_write(&pernet_ops_rwsem);
}
