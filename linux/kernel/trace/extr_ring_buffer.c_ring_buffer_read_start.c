
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int reader_lock; int lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;


 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rb_iter_reset (struct ring_buffer_iter*) ;

void
ring_buffer_read_start(struct ring_buffer_iter *iter)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 unsigned long flags;

 if (!iter)
  return;

 cpu_buffer = iter->cpu_buffer;

 raw_spin_lock_irqsave(&cpu_buffer->reader_lock, flags);
 arch_spin_lock(&cpu_buffer->lock);
 rb_iter_reset(iter);
 arch_spin_unlock(&cpu_buffer->lock);
 raw_spin_unlock_irqrestore(&cpu_buffer->reader_lock, flags);
}
