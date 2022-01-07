
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {unsigned long flags; int filter; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
typedef enum event_trigger_type { ____Placeholder_event_trigger_type } event_trigger_type ;


 int EVENT_FILE_FL_FILTERED ;
 int EVENT_FILE_FL_SOFT_DISABLED_BIT ;
 unsigned long EVENT_FILE_FL_TRIGGER_COND ;
 int __trace_event_discard_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 int event_triggers_call (struct trace_event_file*,void*,struct ring_buffer_event*) ;
 int filter_match_preds (int ,void*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool
__event_trigger_test_discard(struct trace_event_file *file,
        struct ring_buffer *buffer,
        struct ring_buffer_event *event,
        void *entry,
        enum event_trigger_type *tt)
{
 unsigned long eflags = file->flags;

 if (eflags & EVENT_FILE_FL_TRIGGER_COND)
  *tt = event_triggers_call(file, entry, event);

 if (test_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags) ||
     (unlikely(file->flags & EVENT_FILE_FL_FILTERED) &&
      !filter_match_preds(file->filter, entry))) {
  __trace_event_discard_commit(buffer, event);
  return 1;
 }

 return 0;
}
