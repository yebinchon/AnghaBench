
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int i_pages; } ;


 int PAGECACHE_TAG_DIRTY ;
 int __xa_clear_mark (int *,int ,int ) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void f2fs_clear_page_cache_dirty_tag(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 unsigned long flags;

 xa_lock_irqsave(&mapping->i_pages, flags);
 __xa_clear_mark(&mapping->i_pages, page_index(page),
      PAGECACHE_TAG_DIRTY);
 xa_unlock_irqrestore(&mapping->i_pages, flags);
}
