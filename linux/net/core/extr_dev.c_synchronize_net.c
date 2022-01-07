
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int might_sleep () ;
 scalar_t__ rtnl_is_locked () ;
 int synchronize_rcu () ;
 int synchronize_rcu_expedited () ;

void synchronize_net(void)
{
 might_sleep();
 if (rtnl_is_locked())
  synchronize_rcu_expedited();
 else
  synchronize_rcu();
}
