
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int kgdb_active ;
 int kgdb_break_tasklet_var ;
 int kgdb_setting_breakpoint ;
 int kgdb_tasklet_breakpoint ;
 int tasklet_schedule (int *) ;

void kgdb_schedule_breakpoint(void)
{
 if (atomic_read(&kgdb_break_tasklet_var) ||
  atomic_read(&kgdb_active) != -1 ||
  atomic_read(&kgdb_setting_breakpoint))
  return;
 atomic_inc(&kgdb_break_tasklet_var);
 tasklet_schedule(&kgdb_tasklet_breakpoint);
}
