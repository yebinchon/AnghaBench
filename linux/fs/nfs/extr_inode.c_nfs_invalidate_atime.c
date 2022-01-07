
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;


 int NFS_INO_INVALID_ATIME ;
 int nfs_set_cache_invalid (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_invalidate_atime(struct inode *inode)
{
 spin_lock(&inode->i_lock);
 nfs_set_cache_invalid(inode, NFS_INO_INVALID_ATIME);
 spin_unlock(&inode->i_lock);
}
