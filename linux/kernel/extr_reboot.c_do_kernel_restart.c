
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_call_chain (int *,int ,char*) ;
 int reboot_mode ;
 int restart_handler_list ;

void do_kernel_restart(char *cmd)
{
 atomic_notifier_call_chain(&restart_handler_list, reboot_mode, cmd);
}
