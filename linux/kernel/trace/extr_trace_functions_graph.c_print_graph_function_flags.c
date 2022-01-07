
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_seq seq; struct trace_entry* ent; struct fgraph_data* private; } ;
struct trace_entry {int type; } ;
struct ftrace_graph_ret_entry {int ret; } ;
struct ftrace_graph_ent_entry {int ret; } ;
struct fgraph_data {int cpu; int cpu_data; struct ftrace_graph_ret_entry ent; scalar_t__ failed; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int ignore; } ;






 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_NO_CONSUME ;
 int TRACE_TYPE_UNHANDLED ;
 TYPE_1__* per_cpu_ptr (int ,int) ;
 int print_graph_comment (struct trace_seq*,struct trace_entry*,struct trace_iterator*,int ) ;
 int print_graph_entry (struct ftrace_graph_ret_entry*,struct trace_seq*,struct trace_iterator*,int ) ;
 int print_graph_return (int *,struct trace_seq*,struct trace_entry*,struct trace_iterator*,int ) ;
 int trace_assign_type (struct ftrace_graph_ret_entry*,struct trace_entry*) ;

enum print_line_t
print_graph_function_flags(struct trace_iterator *iter, u32 flags)
{
 struct ftrace_graph_ent_entry *field;
 struct fgraph_data *data = iter->private;
 struct trace_entry *entry = iter->ent;
 struct trace_seq *s = &iter->seq;
 int cpu = iter->cpu;
 int ret;

 if (data && per_cpu_ptr(data->cpu_data, cpu)->ignore) {
  per_cpu_ptr(data->cpu_data, cpu)->ignore = 0;
  return TRACE_TYPE_HANDLED;
 }





 if (data && data->failed) {
  field = &data->ent;
  iter->cpu = data->cpu;
  ret = print_graph_entry(field, s, iter, flags);
  if (ret == TRACE_TYPE_HANDLED && iter->cpu != cpu) {
   per_cpu_ptr(data->cpu_data, iter->cpu)->ignore = 1;
   ret = TRACE_TYPE_NO_CONSUME;
  }
  iter->cpu = cpu;
  return ret;
 }

 switch (entry->type) {
 case 130: {






  struct ftrace_graph_ent_entry saved;
  trace_assign_type(field, entry);
  saved = *field;
  return print_graph_entry(&saved, s, iter, flags);
 }
 case 129: {
  struct ftrace_graph_ret_entry *field;
  trace_assign_type(field, entry);
  return print_graph_return(&field->ret, s, entry, iter, flags);
 }
 case 128:
 case 131:

  return TRACE_TYPE_UNHANDLED;

 default:
  return print_graph_comment(s, entry, iter, flags);
 }

 return TRACE_TYPE_HANDLED;
}
