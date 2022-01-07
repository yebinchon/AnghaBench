
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int flags; int lock; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 unsigned int ALLOC_HARDER ;
 int MIGRATE_HIGHATOMIC ;
 int PGALLOC ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int WARN_ON_ONCE (int) ;
 int ZONE_BOOSTED_WATERMARK ;
 int __GFP_NOFAIL ;
 int __count_zid_vm_events (int ,int ,int) ;
 int __mod_zone_freepage_state (struct zone*,int,int ) ;
 struct page* __rmqueue (struct zone*,unsigned int,int,unsigned int) ;
 struct page* __rmqueue_smallest (struct zone*,unsigned int,int ) ;
 scalar_t__ bad_range (struct zone*,struct page*) ;
 scalar_t__ check_new_pages (struct page*,unsigned int) ;
 int clear_bit (int ,int *) ;
 int get_pcppage_migratetype (struct page*) ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int page_zonenum (struct page*) ;
 struct page* rmqueue_pcplist (struct zone*,struct zone*,int,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_mm_page_alloc_zone_locked (struct page*,unsigned int,int) ;
 int wakeup_kswapd (struct zone*,int ,int ,int ) ;
 int zone_idx (struct zone*) ;
 int zone_statistics (struct zone*,struct zone*) ;

__attribute__((used)) static inline
struct page *rmqueue(struct zone *preferred_zone,
   struct zone *zone, unsigned int order,
   gfp_t gfp_flags, unsigned int alloc_flags,
   int migratetype)
{
 unsigned long flags;
 struct page *page;

 if (likely(order == 0)) {
  page = rmqueue_pcplist(preferred_zone, zone, gfp_flags,
     migratetype, alloc_flags);
  goto out;
 }





 WARN_ON_ONCE((gfp_flags & __GFP_NOFAIL) && (order > 1));
 spin_lock_irqsave(&zone->lock, flags);

 do {
  page = ((void*)0);
  if (alloc_flags & ALLOC_HARDER) {
   page = __rmqueue_smallest(zone, order, MIGRATE_HIGHATOMIC);
   if (page)
    trace_mm_page_alloc_zone_locked(page, order, migratetype);
  }
  if (!page)
   page = __rmqueue(zone, order, migratetype, alloc_flags);
 } while (page && check_new_pages(page, order));
 spin_unlock(&zone->lock);
 if (!page)
  goto failed;
 __mod_zone_freepage_state(zone, -(1 << order),
      get_pcppage_migratetype(page));

 __count_zid_vm_events(PGALLOC, page_zonenum(page), 1 << order);
 zone_statistics(preferred_zone, zone);
 local_irq_restore(flags);

out:

 if (test_bit(ZONE_BOOSTED_WATERMARK, &zone->flags)) {
  clear_bit(ZONE_BOOSTED_WATERMARK, &zone->flags);
  wakeup_kswapd(zone, 0, 0, zone_idx(zone));
 }

 VM_BUG_ON_PAGE(page && bad_range(zone, page), page);
 return page;

failed:
 local_irq_restore(flags);
 return ((void*)0);
}
