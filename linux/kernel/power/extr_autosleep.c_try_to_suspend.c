
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 scalar_t__ PM_SUSPEND_MAX ;
 scalar_t__ PM_SUSPEND_ON ;
 scalar_t__ SYSTEM_RUNNING ;
 int autosleep_lock ;
 scalar_t__ autosleep_state ;
 int hibernate () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_get_wakeup_count (unsigned int*,int) ;
 int pm_save_wakeup_count (unsigned int) ;
 int pm_suspend (scalar_t__) ;
 int queue_up_suspend_work () ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ system_state ;

__attribute__((used)) static void try_to_suspend(struct work_struct *work)
{
 unsigned int initial_count, final_count;

 if (!pm_get_wakeup_count(&initial_count, 1))
  goto out;

 mutex_lock(&autosleep_lock);

 if (!pm_save_wakeup_count(initial_count) ||
  system_state != SYSTEM_RUNNING) {
  mutex_unlock(&autosleep_lock);
  goto out;
 }

 if (autosleep_state == PM_SUSPEND_ON) {
  mutex_unlock(&autosleep_lock);
  return;
 }
 if (autosleep_state >= PM_SUSPEND_MAX)
  hibernate();
 else
  pm_suspend(autosleep_state);

 mutex_unlock(&autosleep_lock);

 if (!pm_get_wakeup_count(&final_count, 0))
  goto out;





 if (final_count == initial_count)
  schedule_timeout_uninterruptible(HZ / 2);

 out:
 queue_up_suspend_work();
}
