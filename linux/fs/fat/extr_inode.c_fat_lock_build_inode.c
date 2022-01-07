
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nfs; } ;
struct msdos_sb_info {int nfs_build_inode_lock; TYPE_1__ options; } ;


 scalar_t__ FAT_NFS_NOSTALE_RO ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void fat_lock_build_inode(struct msdos_sb_info *sbi)
{
 if (sbi->options.nfs == FAT_NFS_NOSTALE_RO)
  mutex_lock(&sbi->nfs_build_inode_lock);
}
