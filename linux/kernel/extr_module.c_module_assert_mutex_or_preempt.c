
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int debug_locks ;
 int lockdep_is_held (int *) ;
 int module_mutex ;
 int rcu_read_lock_sched_held () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void module_assert_mutex_or_preempt(void)
{







}
