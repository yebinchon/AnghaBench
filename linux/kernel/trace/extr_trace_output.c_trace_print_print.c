
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct trace_event {int dummy; } ;
struct print_entry {int buf; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int seq_print_ip_sym (struct trace_seq*,int ,int) ;
 int trace_assign_type (struct print_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;

__attribute__((used)) static enum print_line_t trace_print_print(struct trace_iterator *iter,
        int flags, struct trace_event *event)
{
 struct print_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 seq_print_ip_sym(s, field->ip, flags);
 trace_seq_printf(s, ": %s", field->buf);

 return trace_handle_return(s);
}
