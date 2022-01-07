
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct trace_iterator {TYPE_1__* trace_buffer; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_4__ {unsigned long skipped_entries; } ;
struct TYPE_3__ {scalar_t__ time_start; int data; } ;


 TYPE_2__* per_cpu_ptr (int ,int) ;
 struct ring_buffer_event* ring_buffer_iter_peek (struct ring_buffer_iter*,scalar_t__*) ;
 int ring_buffer_iter_reset (struct ring_buffer_iter*) ;
 int ring_buffer_read (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_iter* trace_buffer_iter (struct trace_iterator*,int) ;

void tracing_iter_reset(struct trace_iterator *iter, int cpu)
{
 struct ring_buffer_event *event;
 struct ring_buffer_iter *buf_iter;
 unsigned long entries = 0;
 u64 ts;

 per_cpu_ptr(iter->trace_buffer->data, cpu)->skipped_entries = 0;

 buf_iter = trace_buffer_iter(iter, cpu);
 if (!buf_iter)
  return;

 ring_buffer_iter_reset(buf_iter);






 while ((event = ring_buffer_iter_peek(buf_iter, &ts))) {
  if (ts >= iter->trace_buffer->time_start)
   break;
  entries++;
  ring_buffer_read(buf_iter, ((void*)0));
 }

 per_cpu_ptr(iter->trace_buffer->data, cpu)->skipped_entries = entries;
}
