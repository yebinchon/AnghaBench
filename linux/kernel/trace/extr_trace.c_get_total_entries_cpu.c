
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_buffer {int buffer; int data; } ;
struct TYPE_2__ {scalar_t__ skipped_entries; } ;


 TYPE_1__* per_cpu_ptr (int ,int) ;
 unsigned long ring_buffer_entries_cpu (int ,int) ;
 unsigned long ring_buffer_overrun_cpu (int ,int) ;

__attribute__((used)) static void
get_total_entries_cpu(struct trace_buffer *buf, unsigned long *total,
        unsigned long *entries, int cpu)
{
 unsigned long count;

 count = ring_buffer_entries_cpu(buf->buffer, cpu);





 if (per_cpu_ptr(buf->data, cpu)->skipped_entries) {
  count -= per_cpu_ptr(buf->data, cpu)->skipped_entries;

  *total = count;
 } else
  *total = count +
   ring_buffer_overrun_cpu(buf->buffer, cpu);
 *entries = count;
}
