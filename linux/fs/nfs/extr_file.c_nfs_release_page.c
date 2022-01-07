
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int PAGECACHE ;
 scalar_t__ PagePrivate (struct page*) ;
 int dfprintk (int ,char*,struct page*) ;
 int nfs_fscache_release_page (struct page*,int ) ;

__attribute__((used)) static int nfs_release_page(struct page *page, gfp_t gfp)
{
 dfprintk(PAGECACHE, "NFS: release_page(%p)\n", page);


 if (PagePrivate(page))
  return 0;
 return nfs_fscache_release_page(page, gfp);
}
