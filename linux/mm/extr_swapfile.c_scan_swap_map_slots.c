
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int flags; unsigned long cluster_next; int cluster_nr; int pages; int inuse_pages; unsigned long lowest_bit; unsigned long highest_bit; char* swap_map; int lock; scalar_t__ cluster_info; int type; } ;
struct swap_cluster_info {int dummy; } ;


 int LATENCY_LIMIT ;
 int SWAPFILE_CLUSTER ;
 int SWAP_BATCH ;
 char SWAP_HAS_CACHE ;
 scalar_t__ SWP_SCANNING ;
 int SWP_WRITEOK ;
 int TTRS_ANYWAY ;
 int __try_to_reclaim_swap (struct swap_info_struct*,unsigned long,int ) ;
 int cond_resched () ;
 int inc_cluster_info_page (struct swap_info_struct*,scalar_t__,unsigned long) ;
 struct swap_cluster_info* lock_cluster (struct swap_info_struct*,unsigned long) ;
 scalar_t__ scan_swap_map_ssd_cluster_conflict (struct swap_info_struct*,unsigned long) ;
 scalar_t__ scan_swap_map_try_ssd_cluster (struct swap_info_struct*,unsigned long*,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_range_alloc (struct swap_info_struct*,unsigned long,int) ;
 int swp_entry (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int unlock_cluster (struct swap_cluster_info*) ;
 scalar_t__ vm_swap_full () ;

__attribute__((used)) static int scan_swap_map_slots(struct swap_info_struct *si,
          unsigned char usage, int nr,
          swp_entry_t slots[])
{
 struct swap_cluster_info *ci;
 unsigned long offset;
 unsigned long scan_base;
 unsigned long last_in_cluster = 0;
 int latency_ration = LATENCY_LIMIT;
 int n_ret = 0;

 if (nr > SWAP_BATCH)
  nr = SWAP_BATCH;
 si->flags += SWP_SCANNING;
 scan_base = offset = si->cluster_next;


 if (si->cluster_info) {
  if (scan_swap_map_try_ssd_cluster(si, &offset, &scan_base))
   goto checks;
  else
   goto scan;
 }

 if (unlikely(!si->cluster_nr--)) {
  if (si->pages - si->inuse_pages < SWAPFILE_CLUSTER) {
   si->cluster_nr = SWAPFILE_CLUSTER - 1;
   goto checks;
  }

  spin_unlock(&si->lock);







  scan_base = offset = si->lowest_bit;
  last_in_cluster = offset + SWAPFILE_CLUSTER - 1;


  for (; last_in_cluster <= si->highest_bit; offset++) {
   if (si->swap_map[offset])
    last_in_cluster = offset + SWAPFILE_CLUSTER;
   else if (offset == last_in_cluster) {
    spin_lock(&si->lock);
    offset -= SWAPFILE_CLUSTER - 1;
    si->cluster_next = offset;
    si->cluster_nr = SWAPFILE_CLUSTER - 1;
    goto checks;
   }
   if (unlikely(--latency_ration < 0)) {
    cond_resched();
    latency_ration = LATENCY_LIMIT;
   }
  }

  offset = scan_base;
  spin_lock(&si->lock);
  si->cluster_nr = SWAPFILE_CLUSTER - 1;
 }

checks:
 if (si->cluster_info) {
  while (scan_swap_map_ssd_cluster_conflict(si, offset)) {

   if (n_ret)
    goto done;
   if (!scan_swap_map_try_ssd_cluster(si, &offset,
       &scan_base))
    goto scan;
  }
 }
 if (!(si->flags & SWP_WRITEOK))
  goto no_page;
 if (!si->highest_bit)
  goto no_page;
 if (offset > si->highest_bit)
  scan_base = offset = si->lowest_bit;

 ci = lock_cluster(si, offset);

 if (vm_swap_full() && si->swap_map[offset] == SWAP_HAS_CACHE) {
  int swap_was_freed;
  unlock_cluster(ci);
  spin_unlock(&si->lock);
  swap_was_freed = __try_to_reclaim_swap(si, offset, TTRS_ANYWAY);
  spin_lock(&si->lock);

  if (swap_was_freed)
   goto checks;
  goto scan;
 }

 if (si->swap_map[offset]) {
  unlock_cluster(ci);
  if (!n_ret)
   goto scan;
  else
   goto done;
 }
 si->swap_map[offset] = usage;
 inc_cluster_info_page(si, si->cluster_info, offset);
 unlock_cluster(ci);

 swap_range_alloc(si, offset, 1);
 si->cluster_next = offset + 1;
 slots[n_ret++] = swp_entry(si->type, offset);


 if ((n_ret == nr) || (offset >= si->highest_bit))
  goto done;




 if (unlikely(--latency_ration < 0)) {
  if (n_ret)
   goto done;
  spin_unlock(&si->lock);
  cond_resched();
  spin_lock(&si->lock);
  latency_ration = LATENCY_LIMIT;
 }


 if (si->cluster_info) {
  if (scan_swap_map_try_ssd_cluster(si, &offset, &scan_base))
   goto checks;
  else
   goto done;
 }

 ++offset;


 if (si->cluster_nr && !si->swap_map[offset]) {
  --si->cluster_nr;
  goto checks;
 }

done:
 si->flags -= SWP_SCANNING;
 return n_ret;

scan:
 spin_unlock(&si->lock);
 while (++offset <= si->highest_bit) {
  if (!si->swap_map[offset]) {
   spin_lock(&si->lock);
   goto checks;
  }
  if (vm_swap_full() && si->swap_map[offset] == SWAP_HAS_CACHE) {
   spin_lock(&si->lock);
   goto checks;
  }
  if (unlikely(--latency_ration < 0)) {
   cond_resched();
   latency_ration = LATENCY_LIMIT;
  }
 }
 offset = si->lowest_bit;
 while (offset < scan_base) {
  if (!si->swap_map[offset]) {
   spin_lock(&si->lock);
   goto checks;
  }
  if (vm_swap_full() && si->swap_map[offset] == SWAP_HAS_CACHE) {
   spin_lock(&si->lock);
   goto checks;
  }
  if (unlikely(--latency_ration < 0)) {
   cond_resched();
   latency_ration = LATENCY_LIMIT;
  }
  offset++;
 }
 spin_lock(&si->lock);

no_page:
 si->flags -= SWP_SCANNING;
 return n_ret;
}
