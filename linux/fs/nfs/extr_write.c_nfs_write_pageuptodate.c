
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_inode {int cache_validity; int flags; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALIDATING ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_PAGECACHE ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ nfs_have_delegated_attributes (struct inode*) ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nfs_write_pageuptodate(struct page *page, struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 if (nfs_have_delegated_attributes(inode))
  goto out;
 if (nfsi->cache_validity & NFS_INO_REVAL_PAGECACHE)
  return 0;
 smp_rmb();
 if (test_bit(NFS_INO_INVALIDATING, &nfsi->flags))
  return 0;
out:
 if (nfsi->cache_validity & NFS_INO_INVALID_DATA)
  return 0;
 return PageUptodate(page) != 0;
}
