
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EBUSY ;
 int MIGRATE_ISOLATE ;
 int PageAnon (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int __soft_offline_page (struct page*,int) ;
 struct page* compound_head (struct page*) ;
 int get_pageblock_migratetype (struct page*) ;
 int lock_page (struct page*) ;
 int page_to_pfn (struct page*) ;
 int pr_info (char*,int ) ;
 int put_hwpoison_page (struct page*) ;
 int set_pageblock_migratetype (struct page*,int) ;
 int soft_offline_huge_page (struct page*,int) ;
 int split_huge_page (struct page*) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int soft_offline_in_use_page(struct page *page, int flags)
{
 int ret;
 int mt;
 struct page *hpage = compound_head(page);

 if (!PageHuge(page) && PageTransHuge(hpage)) {
  lock_page(page);
  if (!PageAnon(page) || unlikely(split_huge_page(page))) {
   unlock_page(page);
   if (!PageAnon(page))
    pr_info("soft offline: %#lx: non anonymous thp\n", page_to_pfn(page));
   else
    pr_info("soft offline: %#lx: thp split failed\n", page_to_pfn(page));
   put_hwpoison_page(page);
   return -EBUSY;
  }
  unlock_page(page);
 }
 mt = get_pageblock_migratetype(page);
 set_pageblock_migratetype(page, MIGRATE_ISOLATE);
 if (PageHuge(page))
  ret = soft_offline_huge_page(page, flags);
 else
  ret = __soft_offline_page(page, flags);
 set_pageblock_migratetype(page, mt);
 return ret;
}
