
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int depth; } ;
struct sbitmap_queue {int alloc_hint; TYPE_1__ sb; int round_robin; } ;


 scalar_t__ likely (int) ;
 unsigned int* per_cpu_ptr (int ,unsigned int) ;
 int sbitmap_deferred_clear_bit (TYPE_1__*,unsigned int) ;
 int sbitmap_queue_wake_up (struct sbitmap_queue*) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void sbitmap_queue_clear(struct sbitmap_queue *sbq, unsigned int nr,
    unsigned int cpu)
{
 smp_mb__before_atomic();
 sbitmap_deferred_clear_bit(&sbq->sb, nr);







 smp_mb__after_atomic();
 sbitmap_queue_wake_up(sbq);

 if (likely(!sbq->round_robin && nr < sbq->sb.depth))
  *per_cpu_ptr(sbq->alloc_hint, cpu) = nr;
}
