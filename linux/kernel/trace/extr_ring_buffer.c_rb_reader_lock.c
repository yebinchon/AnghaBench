
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; int reader_lock; } ;


 int atomic_inc (int *) ;
 int in_nmi () ;
 scalar_t__ likely (int) ;
 int raw_spin_lock (int *) ;
 scalar_t__ raw_spin_trylock (int *) ;

__attribute__((used)) static inline bool rb_reader_lock(struct ring_buffer_per_cpu *cpu_buffer)
{
 if (likely(!in_nmi())) {
  raw_spin_lock(&cpu_buffer->reader_lock);
  return 1;
 }
 if (raw_spin_trylock(&cpu_buffer->reader_lock))
  return 1;


 atomic_inc(&cpu_buffer->record_disabled);
 return 0;
}
