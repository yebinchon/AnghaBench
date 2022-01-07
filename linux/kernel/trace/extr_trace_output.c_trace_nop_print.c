
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int seq; TYPE_1__* ent; } ;
struct trace_event {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int type; } ;


 int trace_handle_return (int *) ;
 int trace_seq_printf (int *,char*,int ) ;

enum print_line_t trace_nop_print(struct trace_iterator *iter, int flags,
      struct trace_event *event)
{
 trace_seq_printf(&iter->seq, "type: %d\n", iter->ent->type);

 return trace_handle_return(&iter->seq);
}
