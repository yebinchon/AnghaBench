
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct f2fs_sb_info {int s_list; } ;


 int EXTENT_CACHE ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_NO_EXTENT ;
 int S_ISREG (int ) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 scalar_t__ list_empty (int *) ;
 int test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool f2fs_may_extent_tree(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

 if (!test_opt(sbi, EXTENT_CACHE) ||
   is_inode_flag_set(inode, FI_NO_EXTENT))
  return 0;





 if (list_empty(&sbi->s_list))
  return 0;

 return S_ISREG(inode->i_mode);
}
