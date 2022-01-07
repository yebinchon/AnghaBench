
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int failed_freeze; } ;


 int EPERM ;
 int PM_POST_SUSPEND ;
 int PM_SUSPEND_PREPARE ;
 int SUSPEND_FREEZE ;
 int TPS (char*) ;
 int __pm_notifier_call_chain (int ,int,int*) ;
 int dpm_save_failed_step (int ) ;
 int pm_prepare_console () ;
 int pm_restore_console () ;
 int sleep_state_supported (int ) ;
 int suspend_freeze_processes () ;
 TYPE_1__ suspend_stats ;
 int trace_suspend_resume (int ,int ,int) ;

__attribute__((used)) static int suspend_prepare(suspend_state_t state)
{
 int error, nr_calls = 0;

 if (!sleep_state_supported(state))
  return -EPERM;

 pm_prepare_console();

 error = __pm_notifier_call_chain(PM_SUSPEND_PREPARE, -1, &nr_calls);
 if (error) {
  nr_calls--;
  goto Finish;
 }

 trace_suspend_resume(TPS("freeze_processes"), 0, 1);
 error = suspend_freeze_processes();
 trace_suspend_resume(TPS("freeze_processes"), 0, 0);
 if (!error)
  return 0;

 suspend_stats.failed_freeze++;
 dpm_save_failed_step(SUSPEND_FREEZE);
 Finish:
 __pm_notifier_call_chain(PM_POST_SUSPEND, nr_calls, ((void*)0));
 pm_restore_console();
 return error;
}
