
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;


 int ring_buffer_discard_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 int this_cpu_dec (int ) ;
 struct ring_buffer_event* this_cpu_read (int ) ;
 int trace_buffered_event ;
 int trace_buffered_event_cnt ;

__attribute__((used)) static inline void
__trace_event_discard_commit(struct ring_buffer *buffer,
        struct ring_buffer_event *event)
{
 if (this_cpu_read(trace_buffered_event) == event) {

  this_cpu_dec(trace_buffered_event_cnt);
  return;
 }
 ring_buffer_discard_commit(buffer, event);
}
