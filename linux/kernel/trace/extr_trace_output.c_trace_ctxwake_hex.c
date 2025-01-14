
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct ctx_switch_entry {int prev_pid; int prev_prio; int next_cpu; int next_pid; int next_prio; int next_state; int prev_state; } ;


 int SEQ_PUT_HEX_FIELD (struct trace_seq*,int) ;
 void* task_index_to_char (int ) ;
 int trace_assign_type (struct ctx_switch_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;

__attribute__((used)) static int trace_ctxwake_hex(struct trace_iterator *iter, char S)
{
 struct ctx_switch_entry *field;
 struct trace_seq *s = &iter->seq;
 int T;

 trace_assign_type(field, iter->ent);

 if (!S)
  S = task_index_to_char(field->prev_state);
 T = task_index_to_char(field->next_state);

 SEQ_PUT_HEX_FIELD(s, field->prev_pid);
 SEQ_PUT_HEX_FIELD(s, field->prev_prio);
 SEQ_PUT_HEX_FIELD(s, S);
 SEQ_PUT_HEX_FIELD(s, field->next_cpu);
 SEQ_PUT_HEX_FIELD(s, field->next_pid);
 SEQ_PUT_HEX_FIELD(s, field->next_prio);
 SEQ_PUT_HEX_FIELD(s, T);

 return trace_handle_return(s);
}
