
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg_module_load_nb ;
 int dbg_reboot_notifier ;
 int kgdb_arch_exit () ;
 scalar_t__ kgdb_con_registered ;
 scalar_t__ kgdb_io_module_registered ;
 int kgdbcons ;
 int sysrq_dbg_op ;
 int unregister_console (int *) ;
 int unregister_module_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;
 int unregister_sysrq_key (char,int *) ;

__attribute__((used)) static void kgdb_unregister_callbacks(void)
{





 if (kgdb_io_module_registered) {
  kgdb_io_module_registered = 0;
  unregister_reboot_notifier(&dbg_reboot_notifier);
  unregister_module_notifier(&dbg_module_load_nb);
  kgdb_arch_exit();



  if (kgdb_con_registered) {
   unregister_console(&kgdbcons);
   kgdb_con_registered = 0;
  }
 }
}
