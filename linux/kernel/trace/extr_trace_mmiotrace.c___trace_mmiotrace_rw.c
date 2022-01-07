
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmiotrace_rw {int dummy; } ;
struct trace_mmiotrace_rw {struct mmiotrace_rw rw; } ;
struct trace_event_call {int dummy; } ;
struct trace_array_cpu {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 int TRACE_MMIO_RW ;
 int atomic_inc (int *) ;
 int call_filter_check_discard (struct trace_event_call*,struct trace_mmiotrace_rw*,struct ring_buffer*,struct ring_buffer_event*) ;
 int dropped_count ;
 struct trace_event_call event_mmiotrace_rw ;
 int preempt_count () ;
 struct trace_mmiotrace_rw* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,int ,int) ;
 int trace_buffer_unlock_commit (struct trace_array*,struct ring_buffer*,struct ring_buffer_event*,int ,int) ;

__attribute__((used)) static void __trace_mmiotrace_rw(struct trace_array *tr,
    struct trace_array_cpu *data,
    struct mmiotrace_rw *rw)
{
 struct trace_event_call *call = &event_mmiotrace_rw;
 struct ring_buffer *buffer = tr->trace_buffer.buffer;
 struct ring_buffer_event *event;
 struct trace_mmiotrace_rw *entry;
 int pc = preempt_count();

 event = trace_buffer_lock_reserve(buffer, TRACE_MMIO_RW,
       sizeof(*entry), 0, pc);
 if (!event) {
  atomic_inc(&dropped_count);
  return;
 }
 entry = ring_buffer_event_data(event);
 entry->rw = *rw;

 if (!call_filter_check_discard(call, entry, buffer, event))
  trace_buffer_unlock_commit(tr, buffer, event, 0, pc);
}
