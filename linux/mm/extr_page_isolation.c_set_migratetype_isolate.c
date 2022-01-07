
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; int nr_isolate_pageblock; } ;
struct page {int dummy; } ;
struct memory_isolate_notify {unsigned long start_pfn; scalar_t__ pages_found; int nr_pages; } ;


 int EBUSY ;
 int MEM_ISOLATE_COUNT ;
 int MIGRATE_ISOLATE ;
 int __mod_zone_freepage_state (struct zone*,unsigned long,int) ;
 int drain_all_pages (struct zone*) ;
 int get_pageblock_migratetype (struct page*) ;
 int has_unmovable_pages (struct zone*,struct page*,scalar_t__,int,int) ;
 scalar_t__ is_migrate_isolate_page (struct page*) ;
 int memory_isolate_notify (int ,struct memory_isolate_notify*) ;
 unsigned long move_freepages_block (struct zone*,struct page*,int ,int *) ;
 int notifier_to_errno (int) ;
 unsigned long page_to_pfn (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int pageblock_nr_pages ;
 int set_pageblock_migratetype (struct page*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int set_migratetype_isolate(struct page *page, int migratetype, int isol_flags)
{
 struct zone *zone;
 unsigned long flags, pfn;
 struct memory_isolate_notify arg;
 int notifier_ret;
 int ret = -EBUSY;

 zone = page_zone(page);

 spin_lock_irqsave(&zone->lock, flags);






 if (is_migrate_isolate_page(page))
  goto out;

 pfn = page_to_pfn(page);
 arg.start_pfn = pfn;
 arg.nr_pages = pageblock_nr_pages;
 arg.pages_found = 0;
 notifier_ret = memory_isolate_notify(MEM_ISOLATE_COUNT, &arg);
 notifier_ret = notifier_to_errno(notifier_ret);
 if (notifier_ret)
  goto out;




 if (!has_unmovable_pages(zone, page, arg.pages_found, migratetype,
     isol_flags))
  ret = 0;






out:
 if (!ret) {
  unsigned long nr_pages;
  int mt = get_pageblock_migratetype(page);

  set_pageblock_migratetype(page, MIGRATE_ISOLATE);
  zone->nr_isolate_pageblock++;
  nr_pages = move_freepages_block(zone, page, MIGRATE_ISOLATE,
         ((void*)0));

  __mod_zone_freepage_state(zone, -nr_pages, mt);
 }

 spin_unlock_irqrestore(&zone->lock, flags);
 if (!ret)
  drain_all_pages(zone);
 return ret;
}
