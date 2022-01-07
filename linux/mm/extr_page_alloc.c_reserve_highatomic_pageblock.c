
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long nr_reserved_highatomic; int lock; } ;
struct page {int dummy; } ;


 int MIGRATE_HIGHATOMIC ;
 int get_pageblock_migratetype (struct page*) ;
 int is_migrate_cma (int) ;
 int is_migrate_highatomic (int) ;
 int is_migrate_isolate (int) ;
 int move_freepages_block (struct zone*,struct page*,int ,int *) ;
 int pageblock_nr_pages ;
 int set_pageblock_migratetype (struct page*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zone_managed_pages (struct zone*) ;

__attribute__((used)) static void reserve_highatomic_pageblock(struct page *page, struct zone *zone,
    unsigned int alloc_order)
{
 int mt;
 unsigned long max_managed, flags;





 max_managed = (zone_managed_pages(zone) / 100) + pageblock_nr_pages;
 if (zone->nr_reserved_highatomic >= max_managed)
  return;

 spin_lock_irqsave(&zone->lock, flags);


 if (zone->nr_reserved_highatomic >= max_managed)
  goto out_unlock;


 mt = get_pageblock_migratetype(page);
 if (!is_migrate_highatomic(mt) && !is_migrate_isolate(mt)
     && !is_migrate_cma(mt)) {
  zone->nr_reserved_highatomic += pageblock_nr_pages;
  set_pageblock_migratetype(page, MIGRATE_HIGHATOMIC);
  move_freepages_block(zone, page, MIGRATE_HIGHATOMIC, ((void*)0));
 }

out_unlock:
 spin_unlock_irqrestore(&zone->lock, flags);
}
