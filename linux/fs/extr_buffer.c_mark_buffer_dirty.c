
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int host; } ;


 int I_DIRTY_PAGES ;
 int TestSetPageDirty (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __mark_inode_dirty (int ,int ) ;
 int __set_page_dirty (struct page*,struct address_space*,int ) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int lock_page_memcg (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int smp_mb () ;
 int test_set_buffer_dirty (struct buffer_head*) ;
 int trace_block_dirty_buffer (struct buffer_head*) ;
 int unlock_page_memcg (struct page*) ;

void mark_buffer_dirty(struct buffer_head *bh)
{
 WARN_ON_ONCE(!buffer_uptodate(bh));

 trace_block_dirty_buffer(bh);







 if (buffer_dirty(bh)) {
  smp_mb();
  if (buffer_dirty(bh))
   return;
 }

 if (!test_set_buffer_dirty(bh)) {
  struct page *page = bh->b_page;
  struct address_space *mapping = ((void*)0);

  lock_page_memcg(page);
  if (!TestSetPageDirty(page)) {
   mapping = page_mapping(page);
   if (mapping)
    __set_page_dirty(page, mapping, 0);
  }
  unlock_page_memcg(page);
  if (mapping)
   __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);
 }
}
