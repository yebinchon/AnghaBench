
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEM_RESTART ;
 int SYS_RESTART ;
 int blocking_notifier_call_chain (int *,int ,char*) ;
 int device_shutdown () ;
 int reboot_notifier_list ;
 int system_state ;
 int usermodehelper_disable () ;

void kernel_restart_prepare(char *cmd)
{
 blocking_notifier_call_chain(&reboot_notifier_list, SYS_RESTART, cmd);
 system_state = SYSTEM_RESTART;
 usermodehelper_disable();
 device_shutdown();
}
