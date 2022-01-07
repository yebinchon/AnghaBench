
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int __this_cpu_dec (int ) ;
 int arch_spin_unlock (int *) ;
 int disable_stack_tracer ;
 int local_irq_enable () ;
 int stack_trace_max_lock ;

__attribute__((used)) static void t_stop(struct seq_file *m, void *p)
{
 arch_spin_unlock(&stack_trace_max_lock);

 __this_cpu_dec(disable_stack_tracer);

 local_irq_enable();
}
