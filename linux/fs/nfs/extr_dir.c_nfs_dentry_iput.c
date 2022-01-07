
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct dentry {int d_flags; } ;
struct TYPE_2__ {int cache_validity; } ;


 int DCACHE_NFSFS_RENAMED ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_DATA ;
 scalar_t__ S_ISDIR (int ) ;
 int iput (struct inode*) ;
 int nfs_complete_unlink (struct dentry*,struct inode*) ;
 int nfs_drop_nlink (struct inode*) ;

__attribute__((used)) static void nfs_dentry_iput(struct dentry *dentry, struct inode *inode)
{
 if (S_ISDIR(inode->i_mode))

  NFS_I(inode)->cache_validity |= NFS_INO_INVALID_DATA;

 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
  nfs_complete_unlink(dentry, inode);
  nfs_drop_nlink(inode);
 }
 iput(inode);
}
