
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ring_buffer_per_cpu {scalar_t__ read; scalar_t__ reader_page; int cpu; struct ring_buffer* buffer; } ;
struct ring_buffer_iter {scalar_t__ cache_read; scalar_t__ cache_reader_page; scalar_t__ head; scalar_t__ read_stamp; int head_page; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {int type_len; scalar_t__ time_delta; } ;
struct ring_buffer {int dummy; } ;


 int BUG () ;
 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;




 int rb_advance_iter (struct ring_buffer_iter*) ;
 int rb_inc_iter (struct ring_buffer_iter*) ;
 struct ring_buffer_event* rb_iter_head_event (struct ring_buffer_iter*) ;
 int rb_iter_reset (struct ring_buffer_iter*) ;
 int rb_null_event (struct ring_buffer_event*) ;
 scalar_t__ rb_page_size (int ) ;
 scalar_t__ rb_per_cpu_empty (struct ring_buffer_per_cpu*) ;
 scalar_t__ ring_buffer_event_time_stamp (struct ring_buffer_event*) ;
 scalar_t__ ring_buffer_iter_empty (struct ring_buffer_iter*) ;
 int ring_buffer_normalize_time_stamp (struct ring_buffer*,int ,scalar_t__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ring_buffer_event *
rb_iter_peek(struct ring_buffer_iter *iter, u64 *ts)
{
 struct ring_buffer *buffer;
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_event *event;
 int nr_loops = 0;

 if (ts)
  *ts = 0;

 cpu_buffer = iter->cpu_buffer;
 buffer = cpu_buffer->buffer;






 if (unlikely(iter->cache_read != cpu_buffer->read ||
       iter->cache_reader_page != cpu_buffer->reader_page))
  rb_iter_reset(iter);

 again:
 if (ring_buffer_iter_empty(iter))
  return ((void*)0);
 if (RB_WARN_ON(cpu_buffer, ++nr_loops > 3))
  return ((void*)0);

 if (rb_per_cpu_empty(cpu_buffer))
  return ((void*)0);

 if (iter->head >= rb_page_size(iter->head_page)) {
  rb_inc_iter(iter);
  goto again;
 }

 event = rb_iter_head_event(iter);

 switch (event->type_len) {
 case 130:
  if (rb_null_event(event)) {
   rb_inc_iter(iter);
   goto again;
  }
  rb_advance_iter(iter);
  return event;

 case 129:

  rb_advance_iter(iter);
  goto again;

 case 128:
  if (ts) {
   *ts = ring_buffer_event_time_stamp(event);
   ring_buffer_normalize_time_stamp(cpu_buffer->buffer,
        cpu_buffer->cpu, ts);
  }

  rb_advance_iter(iter);
  goto again;

 case 131:
  if (ts && !(*ts)) {
   *ts = iter->read_stamp + event->time_delta;
   ring_buffer_normalize_time_stamp(buffer,
        cpu_buffer->cpu, ts);
  }
  return event;

 default:
  BUG();
 }

 return ((void*)0);
}
