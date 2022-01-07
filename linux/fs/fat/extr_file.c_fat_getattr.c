
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int ino; int blksize; } ;
struct inode {int i_sb; } ;
struct TYPE_4__ {scalar_t__ nfs; } ;
struct TYPE_5__ {TYPE_1__ options; int cluster_size; } ;


 scalar_t__ FAT_NFS_NOSTALE_RO ;
 TYPE_2__* MSDOS_SB (int ) ;
 struct inode* d_inode (int ) ;
 int fat_i_pos_read (TYPE_2__*,struct inode*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int fat_getattr(const struct path *path, struct kstat *stat,
  u32 request_mask, unsigned int flags)
{
 struct inode *inode = d_inode(path->dentry);
 generic_fillattr(inode, stat);
 stat->blksize = MSDOS_SB(inode->i_sb)->cluster_size;

 if (MSDOS_SB(inode->i_sb)->options.nfs == FAT_NFS_NOSTALE_RO) {

  stat->ino = fat_i_pos_read(MSDOS_SB(inode->i_sb), inode);
 }
 return 0;
}
