
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_call {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct task_struct {int prio; int pid; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ctx_switch_entry {int next_cpu; void* next_state; int next_prio; int next_pid; void* prev_state; int prev_prio; int prev_pid; } ;


 int TRACE_CTX ;
 int call_filter_check_discard (struct trace_event_call*,struct ctx_switch_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct trace_event_call event_context_switch ;
 struct ctx_switch_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 int task_cpu (struct task_struct*) ;
 void* task_state_index (struct task_struct*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int trace_buffer_unlock_commit (struct trace_array*,struct ring_buffer*,struct ring_buffer_event*,unsigned long,int) ;

__attribute__((used)) static void
tracing_sched_switch_trace(struct trace_array *tr,
      struct task_struct *prev,
      struct task_struct *next,
      unsigned long flags, int pc)
{
 struct trace_event_call *call = &event_context_switch;
 struct ring_buffer *buffer = tr->trace_buffer.buffer;
 struct ring_buffer_event *event;
 struct ctx_switch_entry *entry;

 event = trace_buffer_lock_reserve(buffer, TRACE_CTX,
       sizeof(*entry), flags, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->prev_pid = prev->pid;
 entry->prev_prio = prev->prio;
 entry->prev_state = task_state_index(prev);
 entry->next_pid = next->pid;
 entry->next_prio = next->prio;
 entry->next_state = task_state_index(next);
 entry->next_cpu = task_cpu(next);

 if (!call_filter_check_discard(call, entry, buffer, event))
  trace_buffer_unlock_commit(tr, buffer, event, flags, pc);
}
