
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int SetPageUptodate (struct page*) ;
 int fuse_readlink_page (int ,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int fuse_symlink_readpage(struct file *null, struct page *page)
{
 int err = fuse_readlink_page(page->mapping->host, page);

 if (!err)
  SetPageUptodate(page);

 unlock_page(page);

 return err;
}
