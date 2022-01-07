
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int BUG_ON (int) ;
 int FSCACHE ;
 int NFSIOS_FSCACHE_PAGES_UNCACHED ;
 int NFS_I (struct inode*) ;
 int PageLocked (struct page*) ;
 int dfprintk (int ,char*,struct fscache_cookie*,struct page*,int ) ;
 int fscache_uncache_page (struct fscache_cookie*,struct page*) ;
 int fscache_wait_on_page_write (struct fscache_cookie*,struct page*) ;
 struct fscache_cookie* nfs_i_fscache (struct inode*) ;
 int nfs_inc_fscache_stats (int ,int ) ;

void __nfs_fscache_invalidate_page(struct page *page, struct inode *inode)
{
 struct fscache_cookie *cookie = nfs_i_fscache(inode);

 BUG_ON(!cookie);

 dfprintk(FSCACHE, "NFS: fscache invalidatepage (0x%p/0x%p/0x%p)\n",
   cookie, page, NFS_I(inode));

 fscache_wait_on_page_write(cookie, page);

 BUG_ON(!PageLocked(page));
 fscache_uncache_page(cookie, page);
 nfs_inc_fscache_stats(page->mapping->host,
         NFSIOS_FSCACHE_PAGES_UNCACHED);
}
