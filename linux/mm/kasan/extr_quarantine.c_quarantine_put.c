
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_head {scalar_t__ bytes; } ;
struct kmem_cache {int size; } ;
struct kasan_free_meta {int quarantine_link; } ;


 struct qlist_head QLIST_INIT ;
 int QUARANTINE_BATCHES ;
 scalar_t__ QUARANTINE_PERCPU_SIZE ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int cpu_quarantine ;
 struct qlist_head* global_quarantine ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int qlist_move_all (struct qlist_head*,struct qlist_head*) ;
 int qlist_put (struct qlist_head*,int *,int ) ;
 int quarantine_batch_size ;
 int quarantine_head ;
 int quarantine_lock ;
 scalar_t__ quarantine_size ;
 size_t quarantine_tail ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct qlist_head* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache)
{
 unsigned long flags;
 struct qlist_head *q;
 struct qlist_head temp = QLIST_INIT;
 local_irq_save(flags);

 q = this_cpu_ptr(&cpu_quarantine);
 qlist_put(q, &info->quarantine_link, cache->size);
 if (unlikely(q->bytes > QUARANTINE_PERCPU_SIZE)) {
  qlist_move_all(q, &temp);

  raw_spin_lock(&quarantine_lock);
  WRITE_ONCE(quarantine_size, quarantine_size + temp.bytes);
  qlist_move_all(&temp, &global_quarantine[quarantine_tail]);
  if (global_quarantine[quarantine_tail].bytes >=
    READ_ONCE(quarantine_batch_size)) {
   int new_tail;

   new_tail = quarantine_tail + 1;
   if (new_tail == QUARANTINE_BATCHES)
    new_tail = 0;
   if (new_tail != quarantine_head)
    quarantine_tail = new_tail;
  }
  raw_spin_unlock(&quarantine_lock);
 }

 local_irq_restore(flags);
}
