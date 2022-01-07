
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {int pageset; } ;
struct per_cpu_pages {struct list_head* lists; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct per_cpu_pages pcp; } ;


 int PGALLOC ;
 int __count_zid_vm_events (int ,int ,int) ;
 struct page* __rmqueue_pcplist (struct zone*,int,unsigned int,struct per_cpu_pages*,struct list_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int page_zonenum (struct page*) ;
 TYPE_1__* this_cpu_ptr (int ) ;
 int zone_statistics (struct zone*,struct zone*) ;

__attribute__((used)) static struct page *rmqueue_pcplist(struct zone *preferred_zone,
   struct zone *zone, gfp_t gfp_flags,
   int migratetype, unsigned int alloc_flags)
{
 struct per_cpu_pages *pcp;
 struct list_head *list;
 struct page *page;
 unsigned long flags;

 local_irq_save(flags);
 pcp = &this_cpu_ptr(zone->pageset)->pcp;
 list = &pcp->lists[migratetype];
 page = __rmqueue_pcplist(zone, migratetype, alloc_flags, pcp, list);
 if (page) {
  __count_zid_vm_events(PGALLOC, page_zonenum(page), 1);
  zone_statistics(preferred_zone, zone);
 }
 local_irq_restore(flags);
 return page;
}
