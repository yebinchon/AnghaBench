
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int PageDirty (struct page*) ;
 int get_page (struct page*) ;
 int invalidate_inode_pages2_range (struct address_space*,int ,int ) ;
 int lock_page (struct page*) ;
 int nilfs_forget_buffer (struct buffer_head*) ;
 int page_index (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

void nilfs_btnode_delete(struct buffer_head *bh)
{
 struct address_space *mapping;
 struct page *page = bh->b_page;
 pgoff_t index = page_index(page);
 int still_dirty;

 get_page(page);
 lock_page(page);
 wait_on_page_writeback(page);

 nilfs_forget_buffer(bh);
 still_dirty = PageDirty(page);
 mapping = page->mapping;
 unlock_page(page);
 put_page(page);

 if (!still_dirty && mapping)
  invalidate_inode_pages2_range(mapping, index, index);
}
