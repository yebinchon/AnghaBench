
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct trace_event {int dummy; } ;
struct ctx_switch_entry {int next_state; int next_prio; int next_pid; int next_cpu; int prev_state; int prev_prio; int prev_pid; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int SEQ_PUT_FIELD (struct trace_seq*,int ) ;
 int trace_assign_type (struct ctx_switch_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;

__attribute__((used)) static enum print_line_t trace_ctxwake_bin(struct trace_iterator *iter,
        int flags, struct trace_event *event)
{
 struct ctx_switch_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 SEQ_PUT_FIELD(s, field->prev_pid);
 SEQ_PUT_FIELD(s, field->prev_prio);
 SEQ_PUT_FIELD(s, field->prev_state);
 SEQ_PUT_FIELD(s, field->next_cpu);
 SEQ_PUT_FIELD(s, field->next_pid);
 SEQ_PUT_FIELD(s, field->next_prio);
 SEQ_PUT_FIELD(s, field->next_state);

 return trace_handle_return(s);
}
