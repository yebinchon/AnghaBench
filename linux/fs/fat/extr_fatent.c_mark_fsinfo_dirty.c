
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int fsinfo_inode; } ;


 int I_DIRTY_SYNC ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int __mark_inode_dirty (int ,int ) ;
 int is_fat32 (struct msdos_sb_info*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

__attribute__((used)) static void mark_fsinfo_dirty(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 if (sb_rdonly(sb) || !is_fat32(sbi))
  return;

 __mark_inode_dirty(sbi->fsinfo_inode, I_DIRTY_SYNC);
}
