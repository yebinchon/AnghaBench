
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int seq; int ent; } ;
struct trace_event {int dummy; } ;
struct print_entry {int buf; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int trace_assign_type (struct print_entry*,int ) ;
 int trace_handle_return (int *) ;
 int trace_seq_printf (int *,char*,int ,int ) ;

__attribute__((used)) static enum print_line_t trace_print_raw(struct trace_iterator *iter, int flags,
      struct trace_event *event)
{
 struct print_entry *field;

 trace_assign_type(field, iter->ent);

 trace_seq_printf(&iter->seq, "# %lx %s", field->ip, field->buf);

 return trace_handle_return(&iter->seq);
}
