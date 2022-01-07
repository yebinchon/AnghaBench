
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct bputs_entry {unsigned long ip; char const* str; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_5__ {int trace_flags; TYPE_1__ trace_buffer; } ;


 int TRACE_BPUTS ;
 int TRACE_ITER_PRINTK ;
 int __buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 struct ring_buffer_event* __trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int ftrace_trace_stack (TYPE_2__*,struct ring_buffer*,unsigned long,int,int,int *) ;
 TYPE_2__ global_trace ;
 int local_save_flags (unsigned long) ;
 int preempt_count () ;
 struct bputs_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 scalar_t__ tracing_disabled ;
 scalar_t__ tracing_selftest_running ;
 scalar_t__ unlikely (int) ;

int __trace_bputs(unsigned long ip, const char *str)
{
 struct ring_buffer_event *event;
 struct ring_buffer *buffer;
 struct bputs_entry *entry;
 unsigned long irq_flags;
 int size = sizeof(struct bputs_entry);
 int pc;

 if (!(global_trace.trace_flags & TRACE_ITER_PRINTK))
  return 0;

 pc = preempt_count();

 if (unlikely(tracing_selftest_running || tracing_disabled))
  return 0;

 local_save_flags(irq_flags);
 buffer = global_trace.trace_buffer.buffer;
 event = __trace_buffer_lock_reserve(buffer, TRACE_BPUTS, size,
         irq_flags, pc);
 if (!event)
  return 0;

 entry = ring_buffer_event_data(event);
 entry->ip = ip;
 entry->str = str;

 __buffer_unlock_commit(buffer, event);
 ftrace_trace_stack(&global_trace, buffer, irq_flags, 4, pc, ((void*)0));

 return 1;
}
