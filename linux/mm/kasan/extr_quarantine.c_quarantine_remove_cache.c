
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_head {int dummy; } ;
struct kmem_cache {int dummy; } ;


 struct qlist_head QLIST_INIT ;
 unsigned long QUARANTINE_BATCHES ;
 int cond_resched () ;
 int * global_quarantine ;
 int on_each_cpu (int ,struct kmem_cache*,int) ;
 int per_cpu_remove_cache ;
 scalar_t__ qlist_empty (int *) ;
 int qlist_free_all (struct qlist_head*,struct kmem_cache*) ;
 int qlist_move_cache (int *,struct qlist_head*,struct kmem_cache*) ;
 int quarantine_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int remove_cache_srcu ;
 int synchronize_srcu (int *) ;

void quarantine_remove_cache(struct kmem_cache *cache)
{
 unsigned long flags, i;
 struct qlist_head to_free = QLIST_INIT;
 on_each_cpu(per_cpu_remove_cache, cache, 1);

 raw_spin_lock_irqsave(&quarantine_lock, flags);
 for (i = 0; i < QUARANTINE_BATCHES; i++) {
  if (qlist_empty(&global_quarantine[i]))
   continue;
  qlist_move_cache(&global_quarantine[i], &to_free, cache);

  raw_spin_unlock_irqrestore(&quarantine_lock, flags);
  cond_resched();
  raw_spin_lock_irqsave(&quarantine_lock, flags);
 }
 raw_spin_unlock_irqrestore(&quarantine_lock, flags);

 qlist_free_all(&to_free, cache);

 synchronize_srcu(&remove_cache_srcu);
}
