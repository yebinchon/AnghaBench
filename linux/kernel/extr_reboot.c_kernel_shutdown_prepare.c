
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum system_states { ____Placeholder_system_states } system_states ;


 int SYSTEM_HALT ;
 int SYS_HALT ;
 int SYS_POWER_OFF ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 int device_shutdown () ;
 int reboot_notifier_list ;
 int system_state ;
 int usermodehelper_disable () ;

__attribute__((used)) static void kernel_shutdown_prepare(enum system_states state)
{
 blocking_notifier_call_chain(&reboot_notifier_list,
  (state == SYSTEM_HALT) ? SYS_HALT : SYS_POWER_OFF, ((void*)0));
 system_state = state;
 usermodehelper_disable();
 device_shutdown();
}
