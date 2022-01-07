
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMSG_FREEZE ;
 int PMSG_RECOVER ;
 int PMSG_RESTORE ;
 int PMSG_THAW ;
 int PM_EVENT_HIBERNATE ;
 int SYSTEM_RUNNING ;
 int SYSTEM_SUSPEND ;
 int TEST_CORE ;
 int TEST_CPUS ;
 int TEST_PLATFORM ;
 int TPS (char*) ;
 int arch_resume_nosmt () ;
 int clear_free_pages () ;
 int dpm_resume_start (int ) ;
 int dpm_suspend_end (int ) ;
 int events_check_enabled ;
 scalar_t__ hibernation_test (int ) ;
 int in_suspend ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int platform_finish (int) ;
 int platform_leave (int) ;
 int platform_pre_snapshot (int) ;
 scalar_t__ pm_wakeup_pending () ;
 int pr_err (char*,...) ;
 int restore_processor_state () ;
 int save_processor_state () ;
 int suspend_disable_secondary_cpus () ;
 int suspend_enable_secondary_cpus () ;
 int swsusp_arch_suspend () ;
 int syscore_resume () ;
 int syscore_suspend () ;
 int system_state ;
 int trace_suspend_resume (int ,int ,int) ;

__attribute__((used)) static int create_image(int platform_mode)
{
 int error;

 error = dpm_suspend_end(PMSG_FREEZE);
 if (error) {
  pr_err("Some devices failed to power down, aborting hibernation\n");
  return error;
 }

 error = platform_pre_snapshot(platform_mode);
 if (error || hibernation_test(TEST_PLATFORM))
  goto Platform_finish;

 error = suspend_disable_secondary_cpus();
 if (error || hibernation_test(TEST_CPUS))
  goto Enable_cpus;

 local_irq_disable();

 system_state = SYSTEM_SUSPEND;

 error = syscore_suspend();
 if (error) {
  pr_err("Some system devices failed to power down, aborting hibernation\n");
  goto Enable_irqs;
 }

 if (hibernation_test(TEST_CORE) || pm_wakeup_pending())
  goto Power_up;

 in_suspend = 1;
 save_processor_state();
 trace_suspend_resume(TPS("machine_suspend"), PM_EVENT_HIBERNATE, 1);
 error = swsusp_arch_suspend();

 restore_processor_state();
 trace_suspend_resume(TPS("machine_suspend"), PM_EVENT_HIBERNATE, 0);
 if (error)
  pr_err("Error %d creating hibernation image\n", error);

 if (!in_suspend) {
  events_check_enabled = 0;
  clear_free_pages();
 }

 platform_leave(platform_mode);

 Power_up:
 syscore_resume();

 Enable_irqs:
 system_state = SYSTEM_RUNNING;
 local_irq_enable();

 Enable_cpus:
 suspend_enable_secondary_cpus();


 if (!in_suspend)
  error = arch_resume_nosmt();

 Platform_finish:
 platform_finish(platform_mode);

 dpm_resume_start(in_suspend ?
  (error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE);

 return error;
}
