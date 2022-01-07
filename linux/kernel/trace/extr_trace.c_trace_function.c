
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_call {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_entry {unsigned long ip; unsigned long parent_ip; } ;


 int TRACE_FN ;
 int __buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 struct ring_buffer_event* __trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int call_filter_check_discard (struct trace_event_call*,struct ftrace_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct trace_event_call event_function ;
 int ftrace_exports (struct ring_buffer_event*) ;
 int ftrace_exports_enabled ;
 struct ftrace_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 scalar_t__ static_branch_unlikely (int *) ;

void
trace_function(struct trace_array *tr,
        unsigned long ip, unsigned long parent_ip, unsigned long flags,
        int pc)
{
 struct trace_event_call *call = &event_function;
 struct ring_buffer *buffer = tr->trace_buffer.buffer;
 struct ring_buffer_event *event;
 struct ftrace_entry *entry;

 event = __trace_buffer_lock_reserve(buffer, TRACE_FN, sizeof(*entry),
         flags, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->ip = ip;
 entry->parent_ip = parent_ip;

 if (!call_filter_check_discard(call, entry, buffer, event)) {
  if (static_branch_unlikely(&ftrace_exports_enabled))
   ftrace_exports(event);
  __buffer_unlock_commit(buffer, event);
 }
}
