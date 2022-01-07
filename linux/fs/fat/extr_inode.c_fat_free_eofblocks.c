
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_blocks; int i_sb; } ;
struct TYPE_4__ {int mmu_private; } ;
struct TYPE_3__ {int cluster_size; } ;


 int KERN_WARNING ;
 TYPE_2__* MSDOS_I (struct inode*) ;
 TYPE_1__* MSDOS_SB (int ) ;
 int __fat_write_inode (struct inode*,int ) ;
 int fat_msg (int ,int ,char*) ;
 int fat_truncate_blocks (struct inode*,int ) ;
 int inode_needs_sync (struct inode*) ;
 int round_up (int ,int ) ;

__attribute__((used)) static void fat_free_eofblocks(struct inode *inode)
{

 if ((inode->i_blocks << 9) >
   round_up(MSDOS_I(inode)->mmu_private,
    MSDOS_SB(inode->i_sb)->cluster_size)) {
  int err;

  fat_truncate_blocks(inode, MSDOS_I(inode)->mmu_private);






  err = __fat_write_inode(inode, inode_needs_sync(inode));
  if (err) {
   fat_msg(inode->i_sb, KERN_WARNING, "Failed to "
     "update on disk inode for unused "
     "fallocated blocks, inode could be "
     "corrupted. Please run fsck");
  }

 }
}
