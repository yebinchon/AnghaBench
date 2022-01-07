
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int PF_SUSPEND_TASK ;
 int UMH_DISABLED ;
 int UMH_FREEZING ;
 int __usermodehelper_disable (int ) ;
 int __usermodehelper_set_disable_depth (int ) ;
 int atomic_inc (int *) ;
 TYPE_1__* current ;
 int freeze_timeout_msecs ;
 int in_atomic () ;
 int msecs_to_jiffies (int ) ;
 int oom_killer_disable (int ) ;
 int pm_freezing ;
 int pm_wakeup_clear (int) ;
 int pr_cont (char*) ;
 int pr_info (char*) ;
 int system_freezing_cnt ;
 int thaw_processes () ;
 int try_to_freeze_tasks (int) ;

int freeze_processes(void)
{
 int error;

 error = __usermodehelper_disable(UMH_FREEZING);
 if (error)
  return error;


 current->flags |= PF_SUSPEND_TASK;

 if (!pm_freezing)
  atomic_inc(&system_freezing_cnt);

 pm_wakeup_clear(1);
 pr_info("Freezing user space processes ... ");
 pm_freezing = 1;
 error = try_to_freeze_tasks(1);
 if (!error) {
  __usermodehelper_set_disable_depth(UMH_DISABLED);
  pr_cont("done.");
 }
 pr_cont("\n");
 BUG_ON(in_atomic());







 if (!error && !oom_killer_disable(msecs_to_jiffies(freeze_timeout_msecs)))
  error = -EBUSY;

 if (error)
  thaw_processes();
 return error;
}
