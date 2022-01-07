
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int ClearPageSwapCache (struct page*) ;
 scalar_t__ PageChecked (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 scalar_t__ PageMappedToDisk (struct page*) ;
 scalar_t__ PageReferenced (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int PageUnevictable (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ PageWorkingset (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageActive (struct page*) ;
 int SetPageChecked (struct page*) ;
 int SetPageDirty (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageMappedToDisk (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int SetPageUnevictable (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int SetPageWorkingset (struct page*) ;
 scalar_t__ TestClearPageActive (struct page*) ;
 scalar_t__ TestClearPageUnevictable (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int copy_page_owner (struct page*,struct page*) ;
 int end_page_writeback (struct page*) ;
 int ksm_migrate_page (struct page*,struct page*) ;
 int mem_cgroup_migrate (struct page*,struct page*) ;
 int page_cpupid_xchg_last (struct page*,int) ;
 scalar_t__ page_is_idle (struct page*) ;
 scalar_t__ page_is_young (struct page*) ;
 int set_page_idle (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int set_page_young (struct page*) ;

void migrate_page_states(struct page *newpage, struct page *page)
{
 int cpupid;

 if (PageError(page))
  SetPageError(newpage);
 if (PageReferenced(page))
  SetPageReferenced(newpage);
 if (PageUptodate(page))
  SetPageUptodate(newpage);
 if (TestClearPageActive(page)) {
  VM_BUG_ON_PAGE(PageUnevictable(page), page);
  SetPageActive(newpage);
 } else if (TestClearPageUnevictable(page))
  SetPageUnevictable(newpage);
 if (PageWorkingset(page))
  SetPageWorkingset(newpage);
 if (PageChecked(page))
  SetPageChecked(newpage);
 if (PageMappedToDisk(page))
  SetPageMappedToDisk(newpage);


 if (PageDirty(page))
  SetPageDirty(newpage);

 if (page_is_young(page))
  set_page_young(newpage);
 if (page_is_idle(page))
  set_page_idle(newpage);





 cpupid = page_cpupid_xchg_last(page, -1);
 page_cpupid_xchg_last(newpage, cpupid);

 ksm_migrate_page(newpage, page);




 if (PageSwapCache(page))
  ClearPageSwapCache(page);
 ClearPagePrivate(page);
 set_page_private(page, 0);





 if (PageWriteback(newpage))
  end_page_writeback(newpage);

 copy_page_owner(page, newpage);

 mem_cgroup_migrate(page, newpage);
}
