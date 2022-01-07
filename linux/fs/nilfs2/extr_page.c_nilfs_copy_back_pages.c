
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {struct address_space* mapping; int index; } ;
struct address_space {int i_pages; int nrpages; } ;
typedef int pgoff_t ;


 int GFP_NOFS ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 int WARN_ON (int) ;
 struct page* __xa_erase (int *,int ) ;
 int __xa_set_mark (int *,int ,int ) ;
 struct page* __xa_store (int *,int ,struct page*,int ) ;
 int cond_resched () ;
 struct page* find_lock_page (struct address_space*,int ) ;
 int lock_page (struct page*) ;
 int nilfs_copy_page (struct page*,struct page*,int ) ;
 unsigned int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 unsigned int pagevec_lookup (struct pagevec*,struct address_space*,int *) ;
 int pagevec_release (struct pagevec*) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (struct page*) ;
 int unlock_page (struct page*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void nilfs_copy_back_pages(struct address_space *dmap,
      struct address_space *smap)
{
 struct pagevec pvec;
 unsigned int i, n;
 pgoff_t index = 0;

 pagevec_init(&pvec);
repeat:
 n = pagevec_lookup(&pvec, smap, &index);
 if (!n)
  return;

 for (i = 0; i < pagevec_count(&pvec); i++) {
  struct page *page = pvec.pages[i], *dpage;
  pgoff_t offset = page->index;

  lock_page(page);
  dpage = find_lock_page(dmap, offset);
  if (dpage) {

   WARN_ON(PageDirty(dpage));
   nilfs_copy_page(dpage, page, 0);
   unlock_page(dpage);
   put_page(dpage);

  } else {
   struct page *p;


   xa_lock_irq(&smap->i_pages);
   p = __xa_erase(&smap->i_pages, offset);
   WARN_ON(page != p);
   smap->nrpages--;
   xa_unlock_irq(&smap->i_pages);

   xa_lock_irq(&dmap->i_pages);
   p = __xa_store(&dmap->i_pages, offset, page, GFP_NOFS);
   if (unlikely(p)) {

    page->mapping = ((void*)0);
    put_page(page);
   } else {
    page->mapping = dmap;
    dmap->nrpages++;
    if (PageDirty(page))
     __xa_set_mark(&dmap->i_pages, offset,
       PAGECACHE_TAG_DIRTY);
   }
   xa_unlock_irq(&dmap->i_pages);
  }
  unlock_page(page);
 }
 pagevec_release(&pvec);
 cond_resched();

 goto repeat;
}
