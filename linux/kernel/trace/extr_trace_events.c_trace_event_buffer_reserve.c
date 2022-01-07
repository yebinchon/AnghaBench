
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int flags; struct trace_event_call* event_call; } ;
struct TYPE_2__ {int type; } ;
struct trace_event_call {TYPE_1__ event; } ;
struct trace_event_buffer {void* entry; int event; int pc; int flags; int buffer; struct trace_event_file* trace_file; } ;


 int CONFIG_PREEMPTION ;
 int EVENT_FILE_FL_PID_FILTER ;
 scalar_t__ IS_ENABLED (int ) ;
 int local_save_flags (int ) ;
 int preempt_count () ;
 void* ring_buffer_event_data (int ) ;
 int trace_event_buffer_lock_reserve (int *,struct trace_event_file*,int ,unsigned long,int ,int ) ;
 scalar_t__ trace_event_ignore_this_pid (struct trace_event_file*) ;

void *trace_event_buffer_reserve(struct trace_event_buffer *fbuffer,
     struct trace_event_file *trace_file,
     unsigned long len)
{
 struct trace_event_call *event_call = trace_file->event_call;

 if ((trace_file->flags & EVENT_FILE_FL_PID_FILTER) &&
     trace_event_ignore_this_pid(trace_file))
  return ((void*)0);

 local_save_flags(fbuffer->flags);
 fbuffer->pc = preempt_count();






 if (IS_ENABLED(CONFIG_PREEMPTION))
  fbuffer->pc--;
 fbuffer->trace_file = trace_file;

 fbuffer->event =
  trace_event_buffer_lock_reserve(&fbuffer->buffer, trace_file,
      event_call->event.type, len,
      fbuffer->flags, fbuffer->pc);
 if (!fbuffer->event)
  return ((void*)0);

 fbuffer->entry = ring_buffer_event_data(fbuffer->event);
 return fbuffer->entry;
}
