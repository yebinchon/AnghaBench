
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {TYPE_1__* buffer; int record_disabled; int reader_lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct TYPE_2__ {int resize_disabled; } ;


 int atomic_dec (int *) ;
 int kfree (struct ring_buffer_iter*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rb_check_pages (struct ring_buffer_per_cpu*) ;

void
ring_buffer_read_finish(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;
 unsigned long flags;







 raw_spin_lock_irqsave(&cpu_buffer->reader_lock, flags);
 rb_check_pages(cpu_buffer);
 raw_spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);

 atomic_dec(&cpu_buffer->record_disabled);
 atomic_dec(&cpu_buffer->buffer->resize_disabled);
 kfree(iter);
}
