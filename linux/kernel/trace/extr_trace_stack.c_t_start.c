
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* __next (struct seq_file*,scalar_t__*) ;
 int __this_cpu_inc (int ) ;
 int arch_spin_lock (int *) ;
 int disable_stack_tracer ;
 int local_irq_disable () ;
 int stack_trace_max_lock ;

__attribute__((used)) static void *t_start(struct seq_file *m, loff_t *pos)
{
 local_irq_disable();

 __this_cpu_inc(disable_stack_tracer);

 arch_spin_lock(&stack_trace_max_lock);

 if (*pos == 0)
  return SEQ_START_TOKEN;

 return __next(m, pos);
}
