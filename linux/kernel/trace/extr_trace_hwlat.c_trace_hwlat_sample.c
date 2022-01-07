
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
struct hwlat_sample {int nmi_count; int nmi_total_ts; int timestamp; int outer_duration; int duration; int seqnum; } ;
struct hwlat_entry {int nmi_count; int nmi_total_ts; int timestamp; int outer_duration; int duration; int seqnum; } ;


 int TRACE_HWLAT ;
 int call_filter_check_discard (struct trace_event_call*,struct hwlat_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct trace_event_call event_hwlat ;
 struct trace_array* hwlat_trace ;
 int local_save_flags (unsigned long) ;
 int preempt_count () ;
 struct hwlat_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int trace_buffer_unlock_commit_nostack (struct ring_buffer*,struct ring_buffer_event*) ;

__attribute__((used)) static void trace_hwlat_sample(struct hwlat_sample *sample)
{
 struct trace_array *tr = hwlat_trace;
 struct trace_event_call *call = &event_hwlat;
 struct ring_buffer *buffer = tr->trace_buffer.buffer;
 struct ring_buffer_event *event;
 struct hwlat_entry *entry;
 unsigned long flags;
 int pc;

 pc = preempt_count();
 local_save_flags(flags);

 event = trace_buffer_lock_reserve(buffer, TRACE_HWLAT, sizeof(*entry),
       flags, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->seqnum = sample->seqnum;
 entry->duration = sample->duration;
 entry->outer_duration = sample->outer_duration;
 entry->timestamp = sample->timestamp;
 entry->nmi_total_ts = sample->nmi_total_ts;
 entry->nmi_count = sample->nmi_count;

 if (!call_filter_check_discard(call, entry, buffer, event))
  trace_buffer_unlock_commit_nostack(buffer, event);
}
