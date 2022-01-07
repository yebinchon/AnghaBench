
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct address_space {scalar_t__ nrpages; } ;


 int NFS_INO_INVALID_DATA ;
 int nfs_set_cache_invalid (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_zap_mapping(struct inode *inode, struct address_space *mapping)
{
 if (mapping->nrpages != 0) {
  spin_lock(&inode->i_lock);
  nfs_set_cache_invalid(inode, NFS_INO_INVALID_DATA);
  spin_unlock(&inode->i_lock);
 }
}
