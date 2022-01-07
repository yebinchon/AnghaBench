
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int * pages; } ;
struct address_space {int i_pages; } ;


 int page_cache_delete_batch (struct address_space*,struct pagevec*) ;
 int page_cache_free_page (struct address_space*,int ) ;
 int pagevec_count (struct pagevec*) ;
 int trace_mm_filemap_delete_from_page_cache (int ) ;
 int unaccount_page_cache_page (struct address_space*,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void delete_from_page_cache_batch(struct address_space *mapping,
      struct pagevec *pvec)
{
 int i;
 unsigned long flags;

 if (!pagevec_count(pvec))
  return;

 xa_lock_irqsave(&mapping->i_pages, flags);
 for (i = 0; i < pagevec_count(pvec); i++) {
  trace_mm_filemap_delete_from_page_cache(pvec->pages[i]);

  unaccount_page_cache_page(mapping, pvec->pages[i]);
 }
 page_cache_delete_batch(mapping, pvec);
 xa_unlock_irqrestore(&mapping->i_pages, flags);

 for (i = 0; i < pagevec_count(pvec); i++)
  page_cache_free_page(mapping, pvec->pages[i]);
}
