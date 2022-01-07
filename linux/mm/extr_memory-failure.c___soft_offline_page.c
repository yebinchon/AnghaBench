
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; int lru; } ;


 int EBUSY ;
 int EIO ;
 int ISOLATE_UNEVICTABLE ;
 int LIST_HEAD (int ) ;
 int MIGRATE_SYNC ;
 int MPOL_MF_MOVE_ALL ;
 int MR_MEMORY_FAILURE ;
 scalar_t__ NR_ISOLATED_ANON ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int SetPageHWPoison (struct page*) ;
 int __PageMovable (struct page*) ;
 int inc_node_page_state (struct page*,scalar_t__) ;
 int invalidate_inode_page (struct page*) ;
 int isolate_lru_page (struct page*) ;
 int isolate_movable_page (struct page*,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int lock_page (struct page*) ;
 int migrate_pages (int *,int ,int *,int ,int ,int ) ;
 int new_page ;
 int num_poisoned_pages_inc () ;
 int page_count (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;
 int pagelist ;
 int pr_info (char*,unsigned long,...) ;
 int put_hwpoison_page (struct page*) ;
 int putback_movable_pages (int *) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int __soft_offline_page(struct page *page, int flags)
{
 int ret;
 unsigned long pfn = page_to_pfn(page);







 lock_page(page);
 wait_on_page_writeback(page);
 if (PageHWPoison(page)) {
  unlock_page(page);
  put_hwpoison_page(page);
  pr_info("soft offline: %#lx page already poisoned\n", pfn);
  return -EBUSY;
 }




 ret = invalidate_inode_page(page);
 unlock_page(page);




 if (ret == 1) {
  put_hwpoison_page(page);
  pr_info("soft_offline: %#lx: invalidated\n", pfn);
  SetPageHWPoison(page);
  num_poisoned_pages_inc();
  return 0;
 }






 if (PageLRU(page))
  ret = isolate_lru_page(page);
 else
  ret = isolate_movable_page(page, ISOLATE_UNEVICTABLE);




 put_hwpoison_page(page);
 if (!ret) {
  LIST_HEAD(pagelist);





  if (!__PageMovable(page))
   inc_node_page_state(page, NR_ISOLATED_ANON +
      page_is_file_cache(page));
  list_add(&page->lru, &pagelist);
  ret = migrate_pages(&pagelist, new_page, ((void*)0), MPOL_MF_MOVE_ALL,
     MIGRATE_SYNC, MR_MEMORY_FAILURE);
  if (ret) {
   if (!list_empty(&pagelist))
    putback_movable_pages(&pagelist);

   pr_info("soft offline: %#lx: migration failed %d, type %lx (%pGp)\n",
    pfn, ret, page->flags, &page->flags);
   if (ret > 0)
    ret = -EIO;
  }
 } else {
  pr_info("soft offline: %#lx: isolation failed: %d, page count %d, type %lx (%pGp)\n",
   pfn, ret, page_count(page), page->flags, &page->flags);
 }
 return ret;
}
