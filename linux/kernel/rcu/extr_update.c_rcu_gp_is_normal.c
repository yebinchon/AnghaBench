
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RCU_SCHEDULER_INIT ;
 scalar_t__ READ_ONCE (int ) ;
 int rcu_normal ;
 scalar_t__ rcu_scheduler_active ;

bool rcu_gp_is_normal(void)
{
 return READ_ONCE(rcu_normal) &&
        rcu_scheduler_active != RCU_SCHEDULER_INIT;
}
