
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_LOCKDEP_WARN (int,char*) ;
 scalar_t__ lock_is_held (int *) ;
 int rcu_bh_lock_map ;
 int rcu_lock_map ;
 int rcu_sched_lock_map ;

void synchronize_rcu(void)
{
 RCU_LOCKDEP_WARN(lock_is_held(&rcu_bh_lock_map) ||
    lock_is_held(&rcu_lock_map) ||
    lock_is_held(&rcu_sched_lock_map),
    "Illegal synchronize_rcu() in RCU read-side critical section");
}
