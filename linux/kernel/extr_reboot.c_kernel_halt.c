
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMSG_DUMP_HALT ;
 int SYSTEM_HALT ;
 int kernel_shutdown_prepare (int ) ;
 int kmsg_dump (int ) ;
 int machine_halt () ;
 int migrate_to_reboot_cpu () ;
 int pr_emerg (char*) ;
 int syscore_shutdown () ;

void kernel_halt(void)
{
 kernel_shutdown_prepare(SYSTEM_HALT);
 migrate_to_reboot_cpu();
 syscore_shutdown();
 pr_emerg("System halted\n");
 kmsg_dump(KMSG_DUMP_HALT);
 machine_halt();
}
