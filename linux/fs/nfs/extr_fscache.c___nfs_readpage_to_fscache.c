
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; int index; } ;
struct inode {int i_size; } ;


 int FSCACHE ;
 int GFP_KERNEL ;
 int NFSIOS_FSCACHE_PAGES_UNCACHED ;
 int NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL ;
 int NFSIOS_FSCACHE_PAGES_WRITTEN_OK ;
 int dfprintk (int ,char*,struct page*,struct page*,int ,int,...) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_write_page (int ,struct page*,int ,int ) ;
 int nfs_i_fscache (struct inode*) ;
 int nfs_inc_fscache_stats (struct inode*,int ) ;

void __nfs_readpage_to_fscache(struct inode *inode, struct page *page, int sync)
{
 int ret;

 dfprintk(FSCACHE,
   "NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\n",
   nfs_i_fscache(inode), page, page->index, page->flags, sync);

 ret = fscache_write_page(nfs_i_fscache(inode), page,
     inode->i_size, GFP_KERNEL);
 dfprintk(FSCACHE,
   "NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\n",
   page, page->index, page->flags, ret);

 if (ret != 0) {
  fscache_uncache_page(nfs_i_fscache(inode), page);
  nfs_inc_fscache_stats(inode,
          NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL);
  nfs_inc_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_UNCACHED);
 } else {
  nfs_inc_fscache_stats(inode,
          NFSIOS_FSCACHE_PAGES_WRITTEN_OK);
 }
}
