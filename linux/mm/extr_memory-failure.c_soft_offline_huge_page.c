
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int EBUSY ;
 int EIO ;
 int LIST_HEAD (int ) ;
 int MIGRATE_SYNC ;
 int MPOL_MF_MOVE_ALL ;
 int MR_MEMORY_FAILURE ;
 scalar_t__ PageHWPoison (struct page*) ;
 struct page* compound_head (struct page*) ;
 int dissolve_free_huge_page (struct page*) ;
 int isolate_huge_page (struct page*,int *) ;
 int list_empty (int *) ;
 int lock_page (struct page*) ;
 int migrate_pages (int *,int ,int *,int ,int ,int ) ;
 int new_page ;
 int num_poisoned_pages_inc () ;
 unsigned long page_to_pfn (struct page*) ;
 int pagelist ;
 int pr_info (char*,unsigned long,...) ;
 int put_hwpoison_page (struct page*) ;
 int putback_movable_pages (int *) ;
 scalar_t__ set_hwpoison_free_buddy_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int soft_offline_huge_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);
 struct page *hpage = compound_head(page);
 LIST_HEAD(pagelist);





 lock_page(hpage);
 if (PageHWPoison(hpage)) {
  unlock_page(hpage);
  put_hwpoison_page(hpage);
  pr_info("soft offline: %#lx hugepage already poisoned\n", pfn);
  return -EBUSY;
 }
 unlock_page(hpage);

 ret = isolate_huge_page(hpage, &pagelist);




 put_hwpoison_page(hpage);
 if (!ret) {
  pr_info("soft offline: %#lx hugepage failed to isolate\n", pfn);
  return -EBUSY;
 }

 ret = migrate_pages(&pagelist, new_page, ((void*)0), MPOL_MF_MOVE_ALL,
    MIGRATE_SYNC, MR_MEMORY_FAILURE);
 if (ret) {
  pr_info("soft offline: %#lx: hugepage migration failed %d, type %lx (%pGp)\n",
   pfn, ret, page->flags, &page->flags);
  if (!list_empty(&pagelist))
   putback_movable_pages(&pagelist);
  if (ret > 0)
   ret = -EIO;
 } else {







  ret = dissolve_free_huge_page(page);
  if (!ret) {
   if (set_hwpoison_free_buddy_page(page))
    num_poisoned_pages_inc();
   else
    ret = -EBUSY;
  }
 }
 return ret;
}
