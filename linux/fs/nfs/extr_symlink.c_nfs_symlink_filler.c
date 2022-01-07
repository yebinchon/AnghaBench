
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* readlink ) (struct inode*,struct page*,int ,int ) ;} ;


 int EIO ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int stub1 (struct inode*,struct page*,int ,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int nfs_symlink_filler(void *data, struct page *page)
{
 struct inode *inode = data;
 int error;

 error = NFS_PROTO(inode)->readlink(inode, page, 0, PAGE_SIZE);
 if (error < 0)
  goto error;
 SetPageUptodate(page);
 unlock_page(page);
 return 0;

error:
 SetPageError(page);
 unlock_page(page);
 return -EIO;
}
