
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int host; int private_lock; } ;


 int I_DIRTY_PAGES ;
 int TestSetPageDirty (struct page*) ;
 int __mark_inode_dirty (int ,int ) ;
 int __set_page_dirty (struct page*,struct address_space*,int) ;
 int lock_page_memcg (struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page_memcg (struct page*) ;

int __set_page_dirty_buffers(struct page *page)
{
 int newly_dirty;
 struct address_space *mapping = page_mapping(page);

 if (unlikely(!mapping))
  return !TestSetPageDirty(page);

 spin_lock(&mapping->private_lock);
 if (page_has_buffers(page)) {
  struct buffer_head *head = page_buffers(page);
  struct buffer_head *bh = head;

  do {
   set_buffer_dirty(bh);
   bh = bh->b_this_page;
  } while (bh != head);
 }




 lock_page_memcg(page);
 newly_dirty = !TestSetPageDirty(page);
 spin_unlock(&mapping->private_lock);

 if (newly_dirty)
  __set_page_dirty(page, mapping, 1);

 unlock_page_memcg(page);

 if (newly_dirty)
  __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);

 return newly_dirty;
}
