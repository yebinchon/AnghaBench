
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array_cpu {int disabled; } ;
struct TYPE_2__ {int data; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ftrace_graph_ret {int dummy; } ;


 int TRACE_GRAPH_NOTRACE_BIT ;
 int __trace_graph_return (struct trace_array*,struct ftrace_graph_ret*,unsigned long,int) ;
 int atomic_dec (int *) ;
 long atomic_inc_return (int *) ;
 int ftrace_graph_addr_finish (struct ftrace_graph_ret*) ;
 struct trace_array* graph_array ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct trace_array_cpu* per_cpu_ptr (int ,int) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int trace_recursion_clear (int ) ;
 scalar_t__ trace_recursion_test (int ) ;

void trace_graph_return(struct ftrace_graph_ret *trace)
{
 struct trace_array *tr = graph_array;
 struct trace_array_cpu *data;
 unsigned long flags;
 long disabled;
 int cpu;
 int pc;

 ftrace_graph_addr_finish(trace);

 if (trace_recursion_test(TRACE_GRAPH_NOTRACE_BIT)) {
  trace_recursion_clear(TRACE_GRAPH_NOTRACE_BIT);
  return;
 }

 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = per_cpu_ptr(tr->trace_buffer.data, cpu);
 disabled = atomic_inc_return(&data->disabled);
 if (likely(disabled == 1)) {
  pc = preempt_count();
  __trace_graph_return(tr, trace, flags, pc);
 }
 atomic_dec(&data->disabled);
 local_irq_restore(flags);
}
