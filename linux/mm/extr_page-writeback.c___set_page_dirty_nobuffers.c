
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {scalar_t__ host; int i_pages; } ;


 int BUG_ON (int) ;
 int I_DIRTY_PAGES ;
 int PAGECACHE_TAG_DIRTY ;
 int PagePrivate (struct page*) ;
 int PageUptodate (struct page*) ;
 int TestSetPageDirty (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __mark_inode_dirty (scalar_t__,int ) ;
 int __xa_set_mark (int *,int ,int ) ;
 int account_page_dirtied (struct page*,struct address_space*) ;
 int lock_page_memcg (struct page*) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int unlock_page_memcg (struct page*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

int __set_page_dirty_nobuffers(struct page *page)
{
 lock_page_memcg(page);
 if (!TestSetPageDirty(page)) {
  struct address_space *mapping = page_mapping(page);
  unsigned long flags;

  if (!mapping) {
   unlock_page_memcg(page);
   return 1;
  }

  xa_lock_irqsave(&mapping->i_pages, flags);
  BUG_ON(page_mapping(page) != mapping);
  WARN_ON_ONCE(!PagePrivate(page) && !PageUptodate(page));
  account_page_dirtied(page, mapping);
  __xa_set_mark(&mapping->i_pages, page_index(page),
       PAGECACHE_TAG_DIRTY);
  xa_unlock_irqrestore(&mapping->i_pages, flags);
  unlock_page_memcg(page);

  if (mapping->host) {

   __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);
  }
  return 1;
 }
 unlock_page_memcg(page);
 return 0;
}
