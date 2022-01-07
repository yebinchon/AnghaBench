
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int len; } ;
struct trace_seq {char* buffer; TYPE_3__ seq; } ;
struct trace_iterator {TYPE_1__* ent; int cpu; struct fgraph_data* private; struct trace_array* tr; } ;
struct trace_event {TYPE_2__* funcs; } ;
struct trace_entry {int type; } ;
struct trace_array {unsigned long trace_flags; } ;
struct fgraph_data {int cpu_data; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_8__ {int depth; } ;
struct TYPE_6__ {int (* trace ) (struct trace_iterator*,unsigned long,struct trace_event*) ;} ;
struct TYPE_5__ {int type; } ;


 int FLAGS_FILL_FULL ;


 int TRACE_GRAPH_INDENT ;
 unsigned long TRACE_ITER_SYM_MASK ;

 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_UNHANDLED ;
 struct trace_event* ftrace_find_event (int ) ;
 TYPE_4__* per_cpu_ptr (int ,int ) ;
 int print_graph_duration (struct trace_array*,int ,struct trace_seq*,int) ;
 int print_graph_prologue (struct trace_iterator*,struct trace_seq*,int ,int ,int) ;
 int stub1 (struct trace_iterator*,unsigned long,struct trace_event*) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_print_bprintk_msg_only (struct trace_iterator*) ;
 int trace_print_bputs_msg_only (struct trace_iterator*) ;
 int trace_print_printk_msg_only (struct trace_iterator*) ;
 scalar_t__ trace_seq_has_overflowed (struct trace_seq*) ;
 int trace_seq_putc (struct trace_seq*,char) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
print_graph_comment(struct trace_seq *s, struct trace_entry *ent,
      struct trace_iterator *iter, u32 flags)
{
 struct trace_array *tr = iter->tr;
 unsigned long sym_flags = (tr->trace_flags & TRACE_ITER_SYM_MASK);
 struct fgraph_data *data = iter->private;
 struct trace_event *event;
 int depth = 0;
 int ret;
 int i;

 if (data)
  depth = per_cpu_ptr(data->cpu_data, iter->cpu)->depth;

 print_graph_prologue(iter, s, 0, 0, flags);


 print_graph_duration(tr, 0, s, flags | FLAGS_FILL_FULL);


 if (depth > 0)
  for (i = 0; i < (depth + 1) * TRACE_GRAPH_INDENT; i++)
   trace_seq_putc(s, ' ');


 trace_seq_puts(s, "/* ");

 switch (iter->ent->type) {
 case 129:
  ret = trace_print_bputs_msg_only(iter);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
  break;
 case 130:
  ret = trace_print_bprintk_msg_only(iter);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
  break;
 case 128:
  ret = trace_print_printk_msg_only(iter);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
  break;
 default:
  event = ftrace_find_event(ent->type);
  if (!event)
   return TRACE_TYPE_UNHANDLED;

  ret = event->funcs->trace(iter, sym_flags, event);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
 }

 if (trace_seq_has_overflowed(s))
  goto out;


 if (s->buffer[s->seq.len - 1] == '\n') {
  s->buffer[s->seq.len - 1] = '\0';
  s->seq.len--;
 }

 trace_seq_puts(s, " */\n");
 out:
 return trace_handle_return(s);
}
