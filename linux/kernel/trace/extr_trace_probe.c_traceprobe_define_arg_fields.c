
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {int nr_args; struct probe_arg* args; } ;
struct trace_event_call {int dummy; } ;
struct probe_arg {char* fmt; int count; TYPE_1__* type; scalar_t__ offset; int name; } ;
struct TYPE_2__ {char* fmttype; int size; int is_signed; } ;


 int FILTER_OTHER ;
 int trace_define_field (struct trace_event_call*,char const*,int ,scalar_t__,int,int ,int ) ;

int traceprobe_define_arg_fields(struct trace_event_call *event_call,
     size_t offset, struct trace_probe *tp)
{
 int ret, i;


 for (i = 0; i < tp->nr_args; i++) {
  struct probe_arg *parg = &tp->args[i];
  const char *fmt = parg->type->fmttype;
  int size = parg->type->size;

  if (parg->fmt)
   fmt = parg->fmt;
  if (parg->count)
   size *= parg->count;
  ret = trace_define_field(event_call, fmt, parg->name,
      offset + parg->offset, size,
      parg->type->is_signed,
      FILTER_OTHER);
  if (ret)
   return ret;
 }
 return 0;
}
