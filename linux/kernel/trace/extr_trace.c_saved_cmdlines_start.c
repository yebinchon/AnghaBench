
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int * map_cmdline_to_pid; } ;


 int arch_spin_lock (int *) ;
 int preempt_disable () ;
 void* saved_cmdlines_next (struct seq_file*,void*,scalar_t__*) ;
 TYPE_1__* savedcmd ;
 int trace_cmdline_lock ;

__attribute__((used)) static void *saved_cmdlines_start(struct seq_file *m, loff_t *pos)
{
 void *v;
 loff_t l = 0;

 preempt_disable();
 arch_spin_lock(&trace_cmdline_lock);

 v = &savedcmd->map_cmdline_to_pid[0];
 while (l <= *pos) {
  v = saved_cmdlines_next(m, v, &l);
  if (!v)
   return ((void*)0);
 }

 return v;
}
