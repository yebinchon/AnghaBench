
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {unsigned long flags; int cache_validity; } ;
struct inode {int i_lock; } ;


 int ECHILD ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALIDATING ;
 int NFS_INO_INVALID_DATA ;
 scalar_t__ nfs_mapping_need_revalidate_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

int nfs_revalidate_mapping_rcu(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 unsigned long *bitlock = &nfsi->flags;
 int ret = 0;

 if (IS_SWAPFILE(inode))
  goto out;
 if (nfs_mapping_need_revalidate_inode(inode)) {
  ret = -ECHILD;
  goto out;
 }
 spin_lock(&inode->i_lock);
 if (test_bit(NFS_INO_INVALIDATING, bitlock) ||
     (nfsi->cache_validity & NFS_INO_INVALID_DATA))
  ret = -ECHILD;
 spin_unlock(&inode->i_lock);
out:
 return ret;
}
