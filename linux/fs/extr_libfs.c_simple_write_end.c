
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int i_size_write (struct inode*,int) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

int simple_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;
 loff_t last_pos = pos + copied;


 if (!PageUptodate(page)) {
  if (copied < len) {
   unsigned from = pos & (PAGE_SIZE - 1);

   zero_user(page, from + copied, len - copied);
  }
  SetPageUptodate(page);
 }




 if (last_pos > inode->i_size)
  i_size_write(inode, last_pos);

 set_page_dirty(page);
 unlock_page(page);
 put_page(page);

 return copied;
}
