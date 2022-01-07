
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int i_pages; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int __delete_from_page_cache (struct page*,int *) ;
 int page_cache_free_page (struct address_space*,struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void delete_from_page_cache(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 unsigned long flags;

 BUG_ON(!PageLocked(page));
 xa_lock_irqsave(&mapping->i_pages, flags);
 __delete_from_page_cache(page, ((void*)0));
 xa_unlock_irqrestore(&mapping->i_pages, flags);

 page_cache_free_page(mapping, page);
}
