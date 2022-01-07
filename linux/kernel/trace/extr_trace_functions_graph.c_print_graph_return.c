
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_array* tr; struct fgraph_data* private; } ;
struct trace_entry {int pid; } ;
struct trace_array {int dummy; } ;
struct ftrace_graph_ret {unsigned long long rettime; unsigned long long calltime; int depth; scalar_t__ func; void* overrun; } ;
struct fgraph_data {int cpu_data; } ;
struct fgraph_cpu_data {int depth; scalar_t__* enter_funcs; } ;
typedef int pid_t ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int FTRACE_RETFUNC_DEPTH ;
 int TRACE_GRAPH_INDENT ;
 int TRACE_GRAPH_PRINT_OVERRUN ;
 int TRACE_GRAPH_PRINT_TAIL ;
 int TRACE_GRAPH_RET ;
 int TRACE_TYPE_HANDLED ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ check_irq_return (struct trace_iterator*,int,int) ;
 struct fgraph_cpu_data* per_cpu_ptr (int ,int) ;
 int print_graph_duration (struct trace_array*,unsigned long long,struct trace_seq*,int) ;
 int print_graph_irq (struct trace_iterator*,scalar_t__,int ,int,int ,int) ;
 int print_graph_prologue (struct trace_iterator*,struct trace_seq*,int ,int ,int) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,void*) ;
 int trace_seq_putc (struct trace_seq*,char) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
print_graph_return(struct ftrace_graph_ret *trace, struct trace_seq *s,
     struct trace_entry *ent, struct trace_iterator *iter,
     u32 flags)
{
 unsigned long long duration = trace->rettime - trace->calltime;
 struct fgraph_data *data = iter->private;
 struct trace_array *tr = iter->tr;
 pid_t pid = ent->pid;
 int cpu = iter->cpu;
 int func_match = 1;
 int i;

 if (check_irq_return(iter, flags, trace->depth))
  return TRACE_TYPE_HANDLED;

 if (data) {
  struct fgraph_cpu_data *cpu_data;
  int cpu = iter->cpu;

  cpu_data = per_cpu_ptr(data->cpu_data, cpu);






  cpu_data->depth = trace->depth - 1;

  if (trace->depth < FTRACE_RETFUNC_DEPTH &&
      !WARN_ON_ONCE(trace->depth < 0)) {
   if (cpu_data->enter_funcs[trace->depth] != trace->func)
    func_match = 0;
   cpu_data->enter_funcs[trace->depth] = 0;
  }
 }

 print_graph_prologue(iter, s, 0, 0, flags);


 print_graph_duration(tr, duration, s, flags);


 for (i = 0; i < trace->depth * TRACE_GRAPH_INDENT; i++)
  trace_seq_putc(s, ' ');
 if (func_match && !(flags & TRACE_GRAPH_PRINT_TAIL))
  trace_seq_puts(s, "}\n");
 else
  trace_seq_printf(s, "} /* %ps */\n", (void *)trace->func);


 if (flags & TRACE_GRAPH_PRINT_OVERRUN)
  trace_seq_printf(s, " (Overruns: %lu)\n",
     trace->overrun);

 print_graph_irq(iter, trace->func, TRACE_GRAPH_RET,
   cpu, pid, flags);

 return trace_handle_return(s);
}
