
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array_cpu {int disabled; } ;
struct TYPE_2__ {int data; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ftrace_graph_ent {int func; } ;


 int TRACE_GRAPH_NOTRACE_BIT ;
 int __trace_graph_entry (struct trace_array*,struct ftrace_graph_ent*,unsigned long,int) ;
 int atomic_dec (int *) ;
 long atomic_inc_return (int *) ;
 scalar_t__ ftrace_graph_ignore_func (struct ftrace_graph_ent*) ;
 scalar_t__ ftrace_graph_ignore_irqs () ;
 scalar_t__ ftrace_graph_notrace_addr (int ) ;
 int ftrace_trace_task (struct trace_array*) ;
 struct trace_array* graph_array ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct trace_array_cpu* per_cpu_ptr (int ,int) ;
 int preempt_count () ;
 int raw_smp_processor_id () ;
 int trace_recursion_set (int ) ;
 scalar_t__ trace_recursion_test (int ) ;
 scalar_t__ tracing_thresh ;

int trace_graph_entry(struct ftrace_graph_ent *trace)
{
 struct trace_array *tr = graph_array;
 struct trace_array_cpu *data;
 unsigned long flags;
 long disabled;
 int ret;
 int cpu;
 int pc;

 if (trace_recursion_test(TRACE_GRAPH_NOTRACE_BIT))
  return 0;
 if (ftrace_graph_notrace_addr(trace->func)) {
  trace_recursion_set(TRACE_GRAPH_NOTRACE_BIT);




  return 1;
 }

 if (!ftrace_trace_task(tr))
  return 0;

 if (ftrace_graph_ignore_func(trace))
  return 0;

 if (ftrace_graph_ignore_irqs())
  return 0;





 if (tracing_thresh)
  return 1;

 local_irq_save(flags);
 cpu = raw_smp_processor_id();
 data = per_cpu_ptr(tr->trace_buffer.data, cpu);
 disabled = atomic_inc_return(&data->disabled);
 if (likely(disabled == 1)) {
  pc = preempt_count();
  ret = __trace_graph_entry(tr, trace, flags, pc);
 } else {
  ret = 0;
 }

 atomic_dec(&data->disabled);
 local_irq_restore(flags);

 return ret;
}
