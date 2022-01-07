
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int ) ;
 int kgdb_break_tasklet_var ;
 int kgdb_breakpoint () ;

__attribute__((used)) static void kgdb_tasklet_bpt(unsigned long ing)
{
 kgdb_breakpoint();
 atomic_set(&kgdb_break_tasklet_var, 0);
}
