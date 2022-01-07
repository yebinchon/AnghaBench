
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {struct address_space* mapping; } ;
struct address_space {scalar_t__ nrpages; scalar_t__ nrexceptional; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int PAGEVEC_SIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageWriteback (struct page*) ;
 int WARN_ON (int) ;
 int cleancache_invalidate_inode (struct address_space*) ;
 int cleancache_invalidate_page (struct address_space*,struct page*) ;
 int cond_resched () ;
 int delete_from_page_cache_batch (struct address_space*,struct pagevec*) ;
 int do_invalidatepage (struct page*,unsigned int,unsigned int) ;
 struct page* find_lock_page (struct address_space*,int) ;
 int lock_page (struct page*) ;
 int min (int,int) ;
 scalar_t__ page_has_private (struct page*) ;
 int page_to_index (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_lookup_entries (struct pagevec*,struct address_space*,int,int ,int*) ;
 int pagevec_release (struct pagevec*) ;
 int pagevec_remove_exceptionals (struct pagevec*) ;
 int put_page (struct page*) ;
 int truncate_cleanup_page (struct address_space*,struct page*) ;
 int truncate_exceptional_pvec_entries (struct address_space*,struct pagevec*,int*,int) ;
 int truncate_inode_page (struct address_space*,struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;
 scalar_t__ xa_is_value (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

void truncate_inode_pages_range(struct address_space *mapping,
    loff_t lstart, loff_t lend)
{
 pgoff_t start;
 pgoff_t end;
 unsigned int partial_start;
 unsigned int partial_end;
 struct pagevec pvec;
 pgoff_t indices[PAGEVEC_SIZE];
 pgoff_t index;
 int i;

 if (mapping->nrpages == 0 && mapping->nrexceptional == 0)
  goto out;


 partial_start = lstart & (PAGE_SIZE - 1);
 partial_end = (lend + 1) & (PAGE_SIZE - 1);







 start = (lstart + PAGE_SIZE - 1) >> PAGE_SHIFT;
 if (lend == -1)





  end = -1;
 else
  end = (lend + 1) >> PAGE_SHIFT;

 pagevec_init(&pvec);
 index = start;
 while (index < end && pagevec_lookup_entries(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE),
   indices)) {





  struct pagevec locked_pvec;

  pagevec_init(&locked_pvec);
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = indices[i];
   if (index >= end)
    break;

   if (xa_is_value(page))
    continue;

   if (!trylock_page(page))
    continue;
   WARN_ON(page_to_index(page) != index);
   if (PageWriteback(page)) {
    unlock_page(page);
    continue;
   }
   if (page->mapping != mapping) {
    unlock_page(page);
    continue;
   }
   pagevec_add(&locked_pvec, page);
  }
  for (i = 0; i < pagevec_count(&locked_pvec); i++)
   truncate_cleanup_page(mapping, locked_pvec.pages[i]);
  delete_from_page_cache_batch(mapping, &locked_pvec);
  for (i = 0; i < pagevec_count(&locked_pvec); i++)
   unlock_page(locked_pvec.pages[i]);
  truncate_exceptional_pvec_entries(mapping, &pvec, indices, end);
  pagevec_release(&pvec);
  cond_resched();
  index++;
 }
 if (partial_start) {
  struct page *page = find_lock_page(mapping, start - 1);
  if (page) {
   unsigned int top = PAGE_SIZE;
   if (start > end) {

    top = partial_end;
    partial_end = 0;
   }
   wait_on_page_writeback(page);
   zero_user_segment(page, partial_start, top);
   cleancache_invalidate_page(mapping, page);
   if (page_has_private(page))
    do_invalidatepage(page, partial_start,
        top - partial_start);
   unlock_page(page);
   put_page(page);
  }
 }
 if (partial_end) {
  struct page *page = find_lock_page(mapping, end);
  if (page) {
   wait_on_page_writeback(page);
   zero_user_segment(page, 0, partial_end);
   cleancache_invalidate_page(mapping, page);
   if (page_has_private(page))
    do_invalidatepage(page, 0,
        partial_end);
   unlock_page(page);
   put_page(page);
  }
 }




 if (start >= end)
  goto out;

 index = start;
 for ( ; ; ) {
  cond_resched();
  if (!pagevec_lookup_entries(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE), indices)) {

   if (index == start)
    break;

   index = start;
   continue;
  }
  if (index == start && indices[0] >= end) {

   pagevec_remove_exceptionals(&pvec);
   pagevec_release(&pvec);
   break;
  }

  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = indices[i];
   if (index >= end) {

    index = start - 1;
    break;
   }

   if (xa_is_value(page))
    continue;

   lock_page(page);
   WARN_ON(page_to_index(page) != index);
   wait_on_page_writeback(page);
   truncate_inode_page(mapping, page);
   unlock_page(page);
  }
  truncate_exceptional_pvec_entries(mapping, &pvec, indices, end);
  pagevec_release(&pvec);
  index++;
 }

out:
 cleancache_invalidate_inode(mapping);
}
