
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_ib_refill_cache {TYPE_1__* percpu; int xfer; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int count; int first; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 struct list_head* RDS_IB_RECYCLE_BATCH_COUNT ;
 int __this_cpu_inc (int ) ;
 struct list_head* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,struct list_head*) ;
 struct list_head* cmpxchg (int *,int *,struct list_head*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_splice_entire_tail (struct list_head*,struct list_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct list_head* xchg (int *,int *) ;

__attribute__((used)) static void rds_ib_recv_cache_put(struct list_head *new_item,
     struct rds_ib_refill_cache *cache)
{
 unsigned long flags;
 struct list_head *old, *chpfirst;

 local_irq_save(flags);

 chpfirst = __this_cpu_read(cache->percpu->first);
 if (!chpfirst)
  INIT_LIST_HEAD(new_item);
 else
  list_add_tail(new_item, chpfirst);

 __this_cpu_write(cache->percpu->first, new_item);
 __this_cpu_inc(cache->percpu->count);

 if (__this_cpu_read(cache->percpu->count) < RDS_IB_RECYCLE_BATCH_COUNT)
  goto end;







 do {
  old = xchg(&cache->xfer, ((void*)0));
  if (old)
   list_splice_entire_tail(old, chpfirst);
  old = cmpxchg(&cache->xfer, ((void*)0), chpfirst);
 } while (old);


 __this_cpu_write(cache->percpu->first, ((void*)0));
 __this_cpu_write(cache->percpu->count, 0);
end:
 local_irq_restore(flags);
}
