
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int reader_lock; } ;


 scalar_t__ likely (int) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static inline void
rb_reader_unlock(struct ring_buffer_per_cpu *cpu_buffer, bool locked)
{
 if (likely(locked))
  raw_spin_unlock(&cpu_buffer->reader_lock);
 return;
}
