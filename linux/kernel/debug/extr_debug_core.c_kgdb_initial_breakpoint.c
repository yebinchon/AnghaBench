
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kgdb_break_asap ;
 int kgdb_breakpoint () ;
 int pr_crit (char*) ;

__attribute__((used)) static void kgdb_initial_breakpoint(void)
{
 kgdb_break_asap = 0;

 pr_crit("Waiting for connection from remote gdb...\n");
 kgdb_breakpoint();
}
