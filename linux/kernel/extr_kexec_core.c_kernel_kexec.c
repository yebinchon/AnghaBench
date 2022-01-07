
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ preserve_context; } ;


 int EBUSY ;
 int EINVAL ;
 int PMSG_FREEZE ;
 int PMSG_RESTORE ;
 int cpu_hotplug_enable () ;
 int dpm_resume_end (int ) ;
 int dpm_resume_start (int ) ;
 int dpm_suspend_end (int ) ;
 int dpm_suspend_start (int ) ;
 int freeze_processes () ;
 int kernel_restart_prepare (int *) ;
 TYPE_1__* kexec_image ;
 int kexec_in_progress ;
 int kexec_mutex ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lock_system_sleep () ;
 int machine_kexec (TYPE_1__*) ;
 int machine_shutdown () ;
 int migrate_to_reboot_cpu () ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int pm_prepare_console () ;
 int pm_restore_console () ;
 int pr_emerg (char*) ;
 int resume_console () ;
 int suspend_console () ;
 int suspend_disable_secondary_cpus () ;
 int suspend_enable_secondary_cpus () ;
 int syscore_resume () ;
 int syscore_suspend () ;
 int thaw_processes () ;
 int unlock_system_sleep () ;

int kernel_kexec(void)
{
 int error = 0;

 if (!mutex_trylock(&kexec_mutex))
  return -EBUSY;
 if (!kexec_image) {
  error = -EINVAL;
  goto Unlock;
 }
 {
  kexec_in_progress = 1;
  kernel_restart_prepare(((void*)0));
  migrate_to_reboot_cpu();







  cpu_hotplug_enable();
  pr_emerg("Starting new kernel\n");
  machine_shutdown();
 }

 machine_kexec(kexec_image);
 Unlock:
 mutex_unlock(&kexec_mutex);
 return error;
}
