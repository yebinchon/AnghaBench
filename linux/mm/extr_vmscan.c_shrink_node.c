
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ writeback; scalar_t__ taken; scalar_t__ dirty; scalar_t__ congested; scalar_t__ unqueued_dirty; scalar_t__ file_taken; scalar_t__ immediate; } ;
struct scan_control {unsigned long nr_reclaimed; unsigned long nr_scanned; int memcg_low_skipped; int hibernation_mode; TYPE_7__ nr; struct mem_cgroup* target_mem_cgroup; int gfp_mask; int priority; int memcg_low_reclaim; } ;
struct reclaim_state {unsigned long reclaimed_slab; } ;
struct mem_cgroup {int dummy; } ;
struct TYPE_9__ {scalar_t__ kswapd_failures; int flags; int node_id; } ;
typedef TYPE_1__ pg_data_t ;
struct TYPE_11__ {struct reclaim_state* reclaim_state; } ;


 int BLK_RW_ASYNC ;
 int HZ ;
 int MEMCG_LOW ;



 int PGDAT_CONGESTED ;
 int PGDAT_DIRTY ;
 int PGDAT_WRITEBACK ;
 int congestion_wait (int ,int) ;
 TYPE_8__* current ;
 scalar_t__ current_is_kswapd () ;
 scalar_t__ current_may_throttle () ;
 int global_reclaim (struct scan_control*) ;
 struct mem_cgroup* mem_cgroup_iter (struct mem_cgroup*,struct mem_cgroup*,int *) ;
 int mem_cgroup_protected (struct mem_cgroup*,struct mem_cgroup*) ;
 int memcg_memory_event (struct mem_cgroup*,int ) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ pgdat_memcg_congested (TYPE_1__*,struct mem_cgroup*) ;
 scalar_t__ sane_reclaim (struct scan_control*) ;
 int set_bit (int ,int *) ;
 int set_memcg_congestion (TYPE_1__*,struct mem_cgroup*,int) ;
 scalar_t__ should_continue_reclaim (TYPE_1__*,unsigned long,struct scan_control*) ;
 int shrink_node_memcg (TYPE_1__*,struct mem_cgroup*,struct scan_control*,unsigned long*) ;
 int shrink_slab (int ,int ,struct mem_cgroup*,int ) ;
 int vmpressure (int ,struct mem_cgroup*,int,unsigned long,unsigned long) ;
 int wait_iff_congested (int ,int) ;

__attribute__((used)) static bool shrink_node(pg_data_t *pgdat, struct scan_control *sc)
{
 struct reclaim_state *reclaim_state = current->reclaim_state;
 unsigned long nr_reclaimed, nr_scanned;
 bool reclaimable = 0;

 do {
  struct mem_cgroup *root = sc->target_mem_cgroup;
  unsigned long node_lru_pages = 0;
  struct mem_cgroup *memcg;

  memset(&sc->nr, 0, sizeof(sc->nr));

  nr_reclaimed = sc->nr_reclaimed;
  nr_scanned = sc->nr_scanned;

  memcg = mem_cgroup_iter(root, ((void*)0), ((void*)0));
  do {
   unsigned long lru_pages;
   unsigned long reclaimed;
   unsigned long scanned;

   switch (mem_cgroup_protected(root, memcg)) {
   case 129:




    continue;
   case 130:






    if (!sc->memcg_low_reclaim) {
     sc->memcg_low_skipped = 1;
     continue;
    }
    memcg_memory_event(memcg, MEMCG_LOW);
    break;
   case 128:







    break;
   }

   reclaimed = sc->nr_reclaimed;
   scanned = sc->nr_scanned;
   shrink_node_memcg(pgdat, memcg, sc, &lru_pages);
   node_lru_pages += lru_pages;

   shrink_slab(sc->gfp_mask, pgdat->node_id, memcg,
     sc->priority);


   vmpressure(sc->gfp_mask, memcg, 0,
       sc->nr_scanned - scanned,
       sc->nr_reclaimed - reclaimed);

  } while ((memcg = mem_cgroup_iter(root, memcg, ((void*)0))));

  if (reclaim_state) {
   sc->nr_reclaimed += reclaim_state->reclaimed_slab;
   reclaim_state->reclaimed_slab = 0;
  }


  vmpressure(sc->gfp_mask, sc->target_mem_cgroup, 1,
      sc->nr_scanned - nr_scanned,
      sc->nr_reclaimed - nr_reclaimed);

  if (sc->nr_reclaimed - nr_reclaimed)
   reclaimable = 1;

  if (current_is_kswapd()) {
   if (sc->nr.writeback && sc->nr.writeback == sc->nr.taken)
    set_bit(PGDAT_WRITEBACK, &pgdat->flags);






   if (sc->nr.dirty && sc->nr.dirty == sc->nr.congested)
    set_bit(PGDAT_CONGESTED, &pgdat->flags);


   if (sc->nr.unqueued_dirty == sc->nr.file_taken)
    set_bit(PGDAT_DIRTY, &pgdat->flags);







   if (sc->nr.immediate)
    congestion_wait(BLK_RW_ASYNC, HZ/10);
  }





  if (!global_reclaim(sc) && sane_reclaim(sc) &&
      sc->nr.dirty && sc->nr.dirty == sc->nr.congested)
   set_memcg_congestion(pgdat, root, 1);







  if (!sc->hibernation_mode && !current_is_kswapd() &&
     current_may_throttle() && pgdat_memcg_congested(pgdat, root))
   wait_iff_congested(BLK_RW_ASYNC, HZ/10);

 } while (should_continue_reclaim(pgdat, sc->nr_reclaimed - nr_reclaimed,
      sc));







 if (reclaimable)
  pgdat->kswapd_failures = 0;

 return reclaimable;
}
