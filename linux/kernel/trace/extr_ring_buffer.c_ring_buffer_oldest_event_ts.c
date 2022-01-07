
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ring_buffer_per_cpu {int reader_lock; struct buffer_page* reader_page; struct buffer_page* tail_page; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;
struct buffer_page {TYPE_1__* page; } ;
struct TYPE_2__ {int time_stamp; } ;


 int cpumask_test_cpu (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct buffer_page* rb_set_head_page (struct ring_buffer_per_cpu*) ;

u64 ring_buffer_oldest_event_ts(struct ring_buffer *buffer, int cpu)
{
 unsigned long flags;
 struct ring_buffer_per_cpu *cpu_buffer;
 struct buffer_page *bpage;
 u64 ret = 0;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return 0;

 cpu_buffer = buffer->buffers[cpu];
 raw_spin_lock_irqsave(&cpu_buffer->reader_lock, flags);




 if (cpu_buffer->tail_page == cpu_buffer->reader_page)
  bpage = cpu_buffer->reader_page;
 else
  bpage = rb_set_head_page(cpu_buffer);
 if (bpage)
  ret = bpage->page->time_stamp;
 raw_spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);

 return ret;
}
