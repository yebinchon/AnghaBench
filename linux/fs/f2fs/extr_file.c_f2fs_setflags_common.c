
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int i_ctime; } ;
struct f2fs_inode_info {int i_flags; } ;


 int ENOTEMPTY ;
 int EOPNOTSUPP ;
 int EPERM ;
 int F2FS_CASEFOLD_FL ;
 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int F2FS_PROJINHERIT_FL ;
 int FI_PROJ_INHERIT ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int current_time (struct inode*) ;
 int f2fs_empty_dir (struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_sb_has_casefold (int ) ;
 int f2fs_set_inode_flags (struct inode*) ;
 int set_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int f2fs_setflags_common(struct inode *inode, u32 iflags, u32 mask)
{
 struct f2fs_inode_info *fi = F2FS_I(inode);


 if (IS_NOQUOTA(inode))
  return -EPERM;

 if ((iflags ^ fi->i_flags) & F2FS_CASEFOLD_FL) {
  if (!f2fs_sb_has_casefold(F2FS_I_SB(inode)))
   return -EOPNOTSUPP;
  if (!f2fs_empty_dir(inode))
   return -ENOTEMPTY;
 }

 fi->i_flags = iflags | (fi->i_flags & ~mask);

 if (fi->i_flags & F2FS_PROJINHERIT_FL)
  set_inode_flag(inode, FI_PROJ_INHERIT);
 else
  clear_inode_flag(inode, FI_PROJ_INHERIT);

 inode->i_ctime = current_time(inode);
 f2fs_set_inode_flags(inode);
 f2fs_mark_inode_dirty_sync(inode, 1);
 return 0;
}
