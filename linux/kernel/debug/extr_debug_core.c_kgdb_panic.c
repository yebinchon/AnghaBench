
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dbg_kdb_mode ;
 int kdb_printf (char*,char const*) ;
 int kgdb_breakpoint () ;
 int kgdb_io_module_registered ;
 scalar_t__ panic_timeout ;

void kgdb_panic(const char *msg)
{
 if (!kgdb_io_module_registered)
  return;






 if (panic_timeout)
  return;

 if (dbg_kdb_mode)
  kdb_printf("PANIC: %s\n", msg);

 kgdb_breakpoint();
}
