
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array_cpu {int disabled; } ;
struct TYPE_2__ {int data; } ;
struct trace_array {TYPE_1__ trace_buffer; int function_enabled; } ;
struct pt_regs {int dummy; } ;
struct ftrace_ops {struct trace_array* private; } ;


 int STACK_SKIP ;
 int __trace_stack (struct trace_array*,unsigned long,int ,int) ;
 int atomic_dec (int *) ;
 long atomic_inc_return (int *) ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct trace_array_cpu* per_cpu_ptr (int ,int) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
function_stack_trace_call(unsigned long ip, unsigned long parent_ip,
     struct ftrace_ops *op, struct pt_regs *pt_regs)
{
 struct trace_array *tr = op->private;
 struct trace_array_cpu *data;
 unsigned long flags;
 long disabled;
 int cpu;
 int pc;

 if (unlikely(!tr->function_enabled))
  return;





 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = per_cpu_ptr(tr->trace_buffer.data, cpu);
 disabled = atomic_inc_return(&data->disabled);

 if (likely(disabled == 1)) {
  pc = preempt_count();
  trace_function(tr, ip, parent_ip, flags, pc);
  __trace_stack(tr, flags, STACK_SKIP, pc);
 }

 atomic_dec(&data->disabled);
 local_irq_restore(flags);
}
