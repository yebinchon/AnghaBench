
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


 int TRACE_FTRACE_MAX ;
 int TRACE_FTRACE_START ;
 int atomic_read (int *) ;
 int local_save_flags (unsigned long) ;
 struct trace_array_cpu* per_cpu_ptr (int ,int) ;
 int preempt_count () ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int smp_processor_id () ;
 int trace_clear_recursion (int) ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 int trace_test_and_set_recursion (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
function_trace_call(unsigned long ip, unsigned long parent_ip,
      struct ftrace_ops *op, struct pt_regs *pt_regs)
{
 struct trace_array *tr = op->private;
 struct trace_array_cpu *data;
 unsigned long flags;
 int bit;
 int cpu;
 int pc;

 if (unlikely(!tr->function_enabled))
  return;

 pc = preempt_count();
 preempt_disable_notrace();

 bit = trace_test_and_set_recursion(TRACE_FTRACE_START, TRACE_FTRACE_MAX);
 if (bit < 0)
  goto out;

 cpu = smp_processor_id();
 data = per_cpu_ptr(tr->trace_buffer.data, cpu);
 if (!atomic_read(&data->disabled)) {
  local_save_flags(flags);
  trace_function(tr, ip, parent_ip, flags, pc);
 }
 trace_clear_recursion(bit);

 out:
 preempt_enable_notrace();
}
