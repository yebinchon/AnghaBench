
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_DATA_INVAL_DEFER ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_INVALID_SIZE ;
 int i_size_write (struct inode*,scalar_t__) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;

__attribute__((used)) static int nfs_vmtruncate(struct inode * inode, loff_t offset)
{
 int err;

 err = inode_newsize_ok(inode, offset);
 if (err)
  goto out;

 i_size_write(inode, offset);

 if (offset == 0)
  NFS_I(inode)->cache_validity &= ~(NFS_INO_INVALID_DATA |
    NFS_INO_DATA_INVAL_DEFER);
 NFS_I(inode)->cache_validity &= ~NFS_INO_INVALID_SIZE;

 spin_unlock(&inode->i_lock);
 truncate_pagecache(inode, offset);
 spin_lock(&inode->i_lock);
out:
 return err;
}
