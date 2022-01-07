
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int fuse_wait_on_page_writeback (struct inode*,int ) ;
 int fuse_writepage_locked (struct page*) ;

__attribute__((used)) static int fuse_launder_page(struct page *page)
{
 int err = 0;
 if (clear_page_dirty_for_io(page)) {
  struct inode *inode = page->mapping->host;
  err = fuse_writepage_locked(page);
  if (!err)
   fuse_wait_on_page_writeback(inode, page->index);
 }
 return err;
}
