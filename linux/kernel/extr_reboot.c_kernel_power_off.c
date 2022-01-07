
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMSG_DUMP_POWEROFF ;
 int SYSTEM_POWER_OFF ;
 int kernel_shutdown_prepare (int ) ;
 int kmsg_dump (int ) ;
 int machine_power_off () ;
 int migrate_to_reboot_cpu () ;
 int pm_power_off_prepare () ;
 int pr_emerg (char*) ;
 int syscore_shutdown () ;

void kernel_power_off(void)
{
 kernel_shutdown_prepare(SYSTEM_POWER_OFF);
 if (pm_power_off_prepare)
  pm_power_off_prepare();
 migrate_to_reboot_cpu();
 syscore_shutdown();
 pr_emerg("Power down\n");
 kmsg_dump(KMSG_DUMP_POWEROFF);
 machine_power_off();
}
