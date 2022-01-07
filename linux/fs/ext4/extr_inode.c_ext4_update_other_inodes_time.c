
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct other_inode {unsigned long orig_ino; struct ext4_inode* raw_inode; } ;
struct ext4_inode {int dummy; } ;
struct TYPE_2__ {int s_inodes_per_block; } ;


 int EXT4_INODE_SIZE (struct super_block*) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int find_inode_nowait (struct super_block*,unsigned long,int ,struct other_inode*) ;
 int other_inode_match ;

__attribute__((used)) static void ext4_update_other_inodes_time(struct super_block *sb,
       unsigned long orig_ino, char *buf)
{
 struct other_inode oi;
 unsigned long ino;
 int i, inodes_per_block = EXT4_SB(sb)->s_inodes_per_block;
 int inode_size = EXT4_INODE_SIZE(sb);

 oi.orig_ino = orig_ino;





 ino = ((orig_ino - 1) & ~(inodes_per_block - 1)) + 1;
 for (i = 0; i < inodes_per_block; i++, ino++, buf += inode_size) {
  if (ino == orig_ino)
   continue;
  oi.raw_inode = (struct ext4_inode *) buf;
  (void) find_inode_nowait(sb, ino, other_inode_match, &oi);
 }
}
