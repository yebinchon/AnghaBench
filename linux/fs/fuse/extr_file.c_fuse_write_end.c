
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 unsigned int PAGE_MASK ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int fuse_write_update_size (struct inode*,unsigned int) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,size_t,int ) ;

__attribute__((used)) static int fuse_write_end(struct file *file, struct address_space *mapping,
  loff_t pos, unsigned len, unsigned copied,
  struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;


 if (!copied)
  goto unlock;

 if (!PageUptodate(page)) {

  size_t endoff = (pos + copied) & ~PAGE_MASK;
  if (endoff)
   zero_user_segment(page, endoff, PAGE_SIZE);
  SetPageUptodate(page);
 }

 fuse_write_update_size(inode, pos + copied);
 set_page_dirty(page);

unlock:
 unlock_page(page);
 put_page(page);

 return copied;
}
