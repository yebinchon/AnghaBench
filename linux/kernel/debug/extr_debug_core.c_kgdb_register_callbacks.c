
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg_is_early ;
 int dbg_module_load_nb ;
 int dbg_reboot_notifier ;
 int kgdb_arch_init () ;
 int kgdb_arch_late () ;
 int kgdb_con_registered ;
 int kgdb_io_module_registered ;
 scalar_t__ kgdb_use_con ;
 int kgdbcons ;
 int register_console (int *) ;
 int register_module_notifier (int *) ;
 int register_reboot_notifier (int *) ;
 int register_sysrq_key (char,int *) ;
 int sysrq_dbg_op ;

__attribute__((used)) static void kgdb_register_callbacks(void)
{
 if (!kgdb_io_module_registered) {
  kgdb_io_module_registered = 1;
  kgdb_arch_init();
  if (!dbg_is_early)
   kgdb_arch_late();
  register_module_notifier(&dbg_module_load_nb);
  register_reboot_notifier(&dbg_reboot_notifier);



  if (kgdb_use_con && !kgdb_con_registered) {
   register_console(&kgdbcons);
   kgdb_con_registered = 1;
  }
 }
}
