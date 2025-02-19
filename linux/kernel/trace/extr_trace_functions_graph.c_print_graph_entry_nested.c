
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_array* tr; struct fgraph_data* private; } ;
struct trace_array {int dummy; } ;
struct ftrace_graph_ent {size_t depth; scalar_t__ func; } ;
struct ftrace_graph_ent_entry {struct ftrace_graph_ent graph_ent; } ;
struct fgraph_data {int cpu_data; } ;
struct fgraph_cpu_data {size_t depth; scalar_t__* enter_funcs; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int FLAGS_FILL_FULL ;
 size_t FTRACE_RETFUNC_DEPTH ;
 int TRACE_GRAPH_INDENT ;
 int TRACE_TYPE_NO_CONSUME ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int WARN_ON_ONCE (int) ;
 struct fgraph_cpu_data* per_cpu_ptr (int ,int) ;
 int print_graph_duration (struct trace_array*,int ,struct trace_seq*,int) ;
 scalar_t__ trace_seq_has_overflowed (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,void*) ;
 int trace_seq_putc (struct trace_seq*,char) ;

__attribute__((used)) static enum print_line_t
print_graph_entry_nested(struct trace_iterator *iter,
    struct ftrace_graph_ent_entry *entry,
    struct trace_seq *s, int cpu, u32 flags)
{
 struct ftrace_graph_ent *call = &entry->graph_ent;
 struct fgraph_data *data = iter->private;
 struct trace_array *tr = iter->tr;
 int i;

 if (data) {
  struct fgraph_cpu_data *cpu_data;
  int cpu = iter->cpu;

  cpu_data = per_cpu_ptr(data->cpu_data, cpu);
  cpu_data->depth = call->depth;


  if (call->depth < FTRACE_RETFUNC_DEPTH &&
      !WARN_ON_ONCE(call->depth < 0))
   cpu_data->enter_funcs[call->depth] = call->func;
 }


 print_graph_duration(tr, 0, s, flags | FLAGS_FILL_FULL);


 for (i = 0; i < call->depth * TRACE_GRAPH_INDENT; i++)
  trace_seq_putc(s, ' ');

 trace_seq_printf(s, "%ps() {\n", (void *)call->func);

 if (trace_seq_has_overflowed(s))
  return TRACE_TYPE_PARTIAL_LINE;





 return TRACE_TYPE_NO_CONSUME;
}
