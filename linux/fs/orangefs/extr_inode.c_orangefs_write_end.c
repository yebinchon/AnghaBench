
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int file_inode (struct file*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mark_inode_dirty_sync (int ) ;
 unsigned int page_offset (struct page*) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

__attribute__((used)) static int orangefs_write_end(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied, struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;
 loff_t last_pos = pos + copied;





 if (last_pos > inode->i_size)
  i_size_write(inode, last_pos);


 if (!PageUptodate(page)) {
  unsigned from = pos & (PAGE_SIZE - 1);
  if (copied < len) {
   zero_user(page, from + copied, len - copied);
  }

  if (pos == page_offset(page) &&
      (len == PAGE_SIZE || pos + len == inode->i_size)) {
   zero_user_segment(page, from + copied, PAGE_SIZE);
   SetPageUptodate(page);
  }
 }

 set_page_dirty(page);
 unlock_page(page);
 put_page(page);

 mark_inode_dirty_sync(file_inode(file));
 return copied;
}
