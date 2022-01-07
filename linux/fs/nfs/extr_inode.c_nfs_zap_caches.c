
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;


 int nfs_zap_caches_locked (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_zap_caches(struct inode *inode)
{
 spin_lock(&inode->i_lock);
 nfs_zap_caches_locked(inode);
 spin_unlock(&inode->i_lock);
}
