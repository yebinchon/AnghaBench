
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int list; } ;


 int list_del_rcu (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int synchronize_rcu () ;

void rtnl_af_unregister(struct rtnl_af_ops *ops)
{
 rtnl_lock();
 list_del_rcu(&ops->list);
 rtnl_unlock();

 synchronize_rcu();
}
