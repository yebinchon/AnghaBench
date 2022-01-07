
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERBOSE_TOROUT_STRING (char*) ;
 int kthread_stop (int *) ;
 int * shutdown_task ;
 int torture_shutdown_nb ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void torture_shutdown_cleanup(void)
{
 unregister_reboot_notifier(&torture_shutdown_nb);
 if (shutdown_task != ((void*)0)) {
  VERBOSE_TOROUT_STRING("Stopping torture_shutdown task");
  kthread_stop(shutdown_task);
 }
 shutdown_task = ((void*)0);
}
