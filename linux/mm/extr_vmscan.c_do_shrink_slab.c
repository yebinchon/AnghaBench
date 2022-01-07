
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {long batch; int flags; long (* count_objects ) (struct shrinker*,struct shrink_control*) ;unsigned long (* scan_objects ) (struct shrinker*,struct shrink_control*) ;int * nr_deferred; int seeks; } ;
struct shrink_control {int nid; unsigned long nr_to_scan; unsigned long nr_scanned; } ;


 int SHRINKER_NUMA_AWARE ;
 long SHRINK_BATCH ;
 long SHRINK_EMPTY ;
 unsigned long SHRINK_STOP ;
 int SLABS_SCANNED ;
 long atomic_long_add_return (long,int *) ;
 long atomic_long_read (int *) ;
 long atomic_long_xchg (int *,int ) ;
 int cond_resched () ;
 int count_vm_events (int ,unsigned long) ;
 int do_div (unsigned long long,int ) ;
 void* min (long,long) ;
 int pr_err (char*,unsigned long (*) (struct shrinker*,struct shrink_control*),long) ;
 long stub1 (struct shrinker*,struct shrink_control*) ;
 unsigned long stub2 (struct shrinker*,struct shrink_control*) ;
 int trace_mm_shrink_slab_end (struct shrinker*,int,unsigned long,long,long,long) ;
 int trace_mm_shrink_slab_start (struct shrinker*,struct shrink_control*,long,long,unsigned long long,long,int) ;

__attribute__((used)) static unsigned long do_shrink_slab(struct shrink_control *shrinkctl,
        struct shrinker *shrinker, int priority)
{
 unsigned long freed = 0;
 unsigned long long delta;
 long total_scan;
 long freeable;
 long nr;
 long new_nr;
 int nid = shrinkctl->nid;
 long batch_size = shrinker->batch ? shrinker->batch
       : SHRINK_BATCH;
 long scanned = 0, next_deferred;

 if (!(shrinker->flags & SHRINKER_NUMA_AWARE))
  nid = 0;

 freeable = shrinker->count_objects(shrinker, shrinkctl);
 if (freeable == 0 || freeable == SHRINK_EMPTY)
  return freeable;






 nr = atomic_long_xchg(&shrinker->nr_deferred[nid], 0);

 total_scan = nr;
 if (shrinker->seeks) {
  delta = freeable >> priority;
  delta *= 4;
  do_div(delta, shrinker->seeks);
 } else {





  delta = freeable / 2;
 }

 total_scan += delta;
 if (total_scan < 0) {
  pr_err("shrink_slab: %pS negative objects to delete nr=%ld\n",
         shrinker->scan_objects, total_scan);
  total_scan = freeable;
  next_deferred = nr;
 } else
  next_deferred = total_scan;
 if (delta < freeable / 4)
  total_scan = min(total_scan, freeable / 2);






 if (total_scan > freeable * 2)
  total_scan = freeable * 2;

 trace_mm_shrink_slab_start(shrinker, shrinkctl, nr,
       freeable, delta, total_scan, priority);
 while (total_scan >= batch_size ||
        total_scan >= freeable) {
  unsigned long ret;
  unsigned long nr_to_scan = min(batch_size, total_scan);

  shrinkctl->nr_to_scan = nr_to_scan;
  shrinkctl->nr_scanned = nr_to_scan;
  ret = shrinker->scan_objects(shrinker, shrinkctl);
  if (ret == SHRINK_STOP)
   break;
  freed += ret;

  count_vm_events(SLABS_SCANNED, shrinkctl->nr_scanned);
  total_scan -= shrinkctl->nr_scanned;
  scanned += shrinkctl->nr_scanned;

  cond_resched();
 }

 if (next_deferred >= scanned)
  next_deferred -= scanned;
 else
  next_deferred = 0;





 if (next_deferred > 0)
  new_nr = atomic_long_add_return(next_deferred,
      &shrinker->nr_deferred[nid]);
 else
  new_nr = atomic_long_read(&shrinker->nr_deferred[nid]);

 trace_mm_shrink_slab_end(shrinker, nid, freed, nr, new_nr, total_scan);
 return freed;
}
