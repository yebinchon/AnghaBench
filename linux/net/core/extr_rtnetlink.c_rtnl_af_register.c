
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int list; } ;


 int list_add_tail_rcu (int *,int *) ;
 int rtnl_af_ops ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void rtnl_af_register(struct rtnl_af_ops *ops)
{
 rtnl_lock();
 list_add_tail_rcu(&ops->list, &rtnl_af_ops);
 rtnl_unlock();
}
