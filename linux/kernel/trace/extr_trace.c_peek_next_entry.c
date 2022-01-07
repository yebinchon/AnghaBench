
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct trace_iterator {int ent_size; TYPE_1__* trace_buffer; } ;
struct trace_entry {int dummy; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int buffer; } ;


 struct trace_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 int ring_buffer_event_length (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_iter_peek (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_event* ring_buffer_peek (int ,int,int *,unsigned long*) ;
 struct ring_buffer_iter* trace_buffer_iter (struct trace_iterator*,int) ;

__attribute__((used)) static struct trace_entry *
peek_next_entry(struct trace_iterator *iter, int cpu, u64 *ts,
  unsigned long *lost_events)
{
 struct ring_buffer_event *event;
 struct ring_buffer_iter *buf_iter = trace_buffer_iter(iter, cpu);

 if (buf_iter)
  event = ring_buffer_iter_peek(buf_iter, ts);
 else
  event = ring_buffer_peek(iter->trace_buffer->buffer, cpu, ts,
      lost_events);

 if (event) {
  iter->ent_size = ring_buffer_event_length(event);
  return ring_buffer_event_data(event);
 }
 iter->ent_size = 0;
 return ((void*)0);
}
