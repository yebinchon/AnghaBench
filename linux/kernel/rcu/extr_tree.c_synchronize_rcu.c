
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_LOCKDEP_WARN (int,char*) ;
 int call_rcu ;
 scalar_t__ lock_is_held (int *) ;
 int rcu_bh_lock_map ;
 scalar_t__ rcu_blocking_is_gp () ;
 scalar_t__ rcu_gp_is_expedited () ;
 int rcu_lock_map ;
 int rcu_sched_lock_map ;
 int synchronize_rcu_expedited () ;
 int wait_rcu_gp (int ) ;

void synchronize_rcu(void)
{
 RCU_LOCKDEP_WARN(lock_is_held(&rcu_bh_lock_map) ||
    lock_is_held(&rcu_lock_map) ||
    lock_is_held(&rcu_sched_lock_map),
    "Illegal synchronize_rcu() in RCU read-side critical section");
 if (rcu_blocking_is_gp())
  return;
 if (rcu_gp_is_expedited())
  synchronize_rcu_expedited();
 else
  wait_rcu_gp(call_rcu);
}
