
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 int EINVAL ;
 scalar_t__ PM_SUSPEND_MAX ;
 scalar_t__ PM_SUSPEND_ON ;
 int __pm_relax (int ) ;
 int __pm_stay_awake (int ) ;
 int autosleep_lock ;
 scalar_t__ autosleep_state ;
 int autosleep_ws ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_wakep_autosleep_enabled (int) ;
 int queue_up_suspend_work () ;

int pm_autosleep_set_state(suspend_state_t state)
{


 if (state >= PM_SUSPEND_MAX)
  return -EINVAL;


 __pm_stay_awake(autosleep_ws);

 mutex_lock(&autosleep_lock);

 autosleep_state = state;

 __pm_relax(autosleep_ws);

 if (state > PM_SUSPEND_ON) {
  pm_wakep_autosleep_enabled(1);
  queue_up_suspend_work();
 } else {
  pm_wakep_autosleep_enabled(0);
 }

 mutex_unlock(&autosleep_lock);
 return 0;
}
