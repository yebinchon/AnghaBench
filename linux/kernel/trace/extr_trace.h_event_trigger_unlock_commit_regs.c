
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int tr; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;
typedef enum event_trigger_type { ____Placeholder_event_trigger_type } event_trigger_type ;


 int ETT_NONE ;
 int __event_trigger_test_discard (struct trace_event_file*,struct ring_buffer*,struct ring_buffer_event*,void*,int*) ;
 int event_triggers_post_call (struct trace_event_file*,int) ;
 int trace_buffer_unlock_commit_regs (int ,struct ring_buffer*,struct ring_buffer_event*,unsigned long,int,struct pt_regs*) ;

__attribute__((used)) static inline void
event_trigger_unlock_commit_regs(struct trace_event_file *file,
     struct ring_buffer *buffer,
     struct ring_buffer_event *event,
     void *entry, unsigned long irq_flags, int pc,
     struct pt_regs *regs)
{
 enum event_trigger_type tt = ETT_NONE;

 if (!__event_trigger_test_discard(file, buffer, event, entry, &tt))
  trace_buffer_unlock_commit_regs(file->tr, buffer, event,
      irq_flags, pc, regs);

 if (tt)
  event_triggers_post_call(file, tt);
}
