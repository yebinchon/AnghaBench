
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct trace_event {int dummy; } ;
struct bprint_entry {int buf; int fmt; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int trace_assign_type (struct bprint_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_bprintf (struct trace_seq*,int ,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;

__attribute__((used)) static enum print_line_t
trace_bprint_raw(struct trace_iterator *iter, int flags,
   struct trace_event *event)
{
 struct bprint_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 trace_seq_printf(s, ": %lx : ", field->ip);
 trace_seq_bprintf(s, field->fmt, field->buf);

 return trace_handle_return(s);
}
