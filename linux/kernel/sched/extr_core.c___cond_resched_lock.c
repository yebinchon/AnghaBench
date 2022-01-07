
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int PREEMPT_LOCK_OFFSET ;
 int cpu_relax () ;
 int lockdep_assert_held (int *) ;
 int preempt_schedule_common () ;
 int should_resched (int ) ;
 int spin_lock (int *) ;
 scalar_t__ spin_needbreak (int *) ;
 int spin_unlock (int *) ;

int __cond_resched_lock(spinlock_t *lock)
{
 int resched = should_resched(PREEMPT_LOCK_OFFSET);
 int ret = 0;

 lockdep_assert_held(lock);

 if (spin_needbreak(lock) || resched) {
  spin_unlock(lock);
  if (resched)
   preempt_schedule_common();
  else
   cpu_relax();
  ret = 1;
  spin_lock(lock);
 }
 return ret;
}
