
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct address_space {int i_pages; } ;


 int PAGECACHE_TAG_DIRTY ;
 int PageUptodate (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __xa_set_mark (int *,int ,int ) ;
 int account_page_dirtied (struct page*,struct address_space*) ;
 int page_index (struct page*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void __set_page_dirty(struct page *page, struct address_space *mapping,
        int warn)
{
 unsigned long flags;

 xa_lock_irqsave(&mapping->i_pages, flags);
 if (page->mapping) {
  WARN_ON_ONCE(warn && !PageUptodate(page));
  account_page_dirtied(page, mapping);
  __xa_set_mark(&mapping->i_pages, page_index(page),
    PAGECACHE_TAG_DIRTY);
 }
 xa_unlock_irqrestore(&mapping->i_pages, flags);
}
