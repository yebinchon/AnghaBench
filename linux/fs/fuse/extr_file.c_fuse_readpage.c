
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EIO ;
 int fuse_do_readpage (struct file*,struct page*) ;
 int fuse_invalidate_atime (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int fuse_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 int err;

 err = -EIO;
 if (is_bad_inode(inode))
  goto out;

 err = fuse_do_readpage(file, page);
 fuse_invalidate_atime(inode);
 out:
 unlock_page(page);
 return err;
}
