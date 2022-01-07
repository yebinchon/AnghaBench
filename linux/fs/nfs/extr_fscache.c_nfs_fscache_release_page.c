
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct fscache_cookie {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 int BUG_ON (int) ;
 int FSCACHE ;
 int NFSIOS_FSCACHE_PAGES_UNCACHED ;
 int NFS_I (int ) ;
 scalar_t__ PageFsCache (struct page*) ;
 int dfprintk (int ,char*,struct fscache_cookie*,struct page*,int ) ;
 int fscache_maybe_release_page (struct fscache_cookie*,struct page*,int ) ;
 struct fscache_cookie* nfs_i_fscache (int ) ;
 int nfs_inc_fscache_stats (int ,int ) ;

int nfs_fscache_release_page(struct page *page, gfp_t gfp)
{
 if (PageFsCache(page)) {
  struct fscache_cookie *cookie = nfs_i_fscache(page->mapping->host);

  BUG_ON(!cookie);
  dfprintk(FSCACHE, "NFS: fscache releasepage (0x%p/0x%p/0x%p)\n",
    cookie, page, NFS_I(page->mapping->host));

  if (!fscache_maybe_release_page(cookie, page, gfp))
   return 0;

  nfs_inc_fscache_stats(page->mapping->host,
          NFSIOS_FSCACHE_PAGES_UNCACHED);
 }

 return 1;
}
