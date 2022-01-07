
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int * inode_list; } ;
typedef enum inode_type { ____Placeholder_inode_type } inode_type ;
struct TYPE_2__ {int dirty_list; } ;


 int DIR_INODE ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_DIRTY_DIR ;
 int FI_DIRTY_FILE ;
 int f2fs_is_volatile_file (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int) ;
 int list_add_tail (int *,int *) ;
 int set_inode_flag (struct inode*,int) ;
 int stat_inc_dirty_inode (struct f2fs_sb_info*,int) ;

__attribute__((used)) static void __add_dirty_inode(struct inode *inode, enum inode_type type)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int flag = (type == DIR_INODE) ? FI_DIRTY_DIR : FI_DIRTY_FILE;

 if (is_inode_flag_set(inode, flag))
  return;

 set_inode_flag(inode, flag);
 if (!f2fs_is_volatile_file(inode))
  list_add_tail(&F2FS_I(inode)->dirty_list,
      &sbi->inode_list[type]);
 stat_inc_dirty_inode(sbi, type);
}
