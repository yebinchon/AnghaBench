
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMSG_DUMP_RESTART ;
 int kernel_restart_prepare (char*) ;
 int kmsg_dump (int ) ;
 int machine_restart (char*) ;
 int migrate_to_reboot_cpu () ;
 int pr_emerg (char*,...) ;
 int syscore_shutdown () ;

void kernel_restart(char *cmd)
{
 kernel_restart_prepare(cmd);
 migrate_to_reboot_cpu();
 syscore_shutdown();
 if (!cmd)
  pr_emerg("Restarting system\n");
 else
  pr_emerg("Restarting system with command '%s'\n", cmd);
 kmsg_dump(KMSG_DUMP_RESTART);
 machine_restart(cmd);
}
