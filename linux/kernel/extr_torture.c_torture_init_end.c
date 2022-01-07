
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fullstop_mutex ;
 int mutex_unlock (int *) ;
 int register_reboot_notifier (int *) ;
 int torture_shutdown_nb ;

void torture_init_end(void)
{
 mutex_unlock(&fullstop_mutex);
 register_reboot_notifier(&torture_shutdown_nb);
}
