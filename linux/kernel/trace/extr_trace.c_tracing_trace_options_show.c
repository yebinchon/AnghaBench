
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tracer_opt {int bit; scalar_t__ name; } ;
struct trace_array {int trace_flags; TYPE_2__* current_trace; } ;
struct seq_file {struct trace_array* private; } ;
struct TYPE_4__ {TYPE_1__* flags; } ;
struct TYPE_3__ {int val; struct tracer_opt* opts; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 scalar_t__* trace_options ;
 int trace_types_lock ;

__attribute__((used)) static int tracing_trace_options_show(struct seq_file *m, void *v)
{
 struct tracer_opt *trace_opts;
 struct trace_array *tr = m->private;
 u32 tracer_flags;
 int i;

 mutex_lock(&trace_types_lock);
 tracer_flags = tr->current_trace->flags->val;
 trace_opts = tr->current_trace->flags->opts;

 for (i = 0; trace_options[i]; i++) {
  if (tr->trace_flags & (1 << i))
   seq_printf(m, "%s\n", trace_options[i]);
  else
   seq_printf(m, "no%s\n", trace_options[i]);
 }

 for (i = 0; trace_opts[i].name; i++) {
  if (tracer_flags & trace_opts[i].bit)
   seq_printf(m, "%s\n", trace_opts[i].name);
  else
   seq_printf(m, "no%s\n", trace_opts[i].name);
 }
 mutex_unlock(&trace_types_lock);

 return 0;
}
