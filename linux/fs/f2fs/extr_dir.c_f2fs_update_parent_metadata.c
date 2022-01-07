
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ctime; int i_mtime; int i_mode; } ;
struct TYPE_2__ {unsigned int i_current_depth; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int FI_INC_LINK ;
 int FI_NEW_INODE ;
 scalar_t__ S_ISDIR (int ) ;
 int clear_inode_flag (struct inode*,int ) ;
 int current_time (struct inode*) ;
 int f2fs_i_depth_write (struct inode*,unsigned int) ;
 int f2fs_i_links_write (struct inode*,int) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;

void f2fs_update_parent_metadata(struct inode *dir, struct inode *inode,
      unsigned int current_depth)
{
 if (inode && is_inode_flag_set(inode, FI_NEW_INODE)) {
  if (S_ISDIR(inode->i_mode))
   f2fs_i_links_write(dir, 1);
  clear_inode_flag(inode, FI_NEW_INODE);
 }
 dir->i_mtime = dir->i_ctime = current_time(dir);
 f2fs_mark_inode_dirty_sync(dir, 0);

 if (F2FS_I(dir)->i_current_depth != current_depth)
  f2fs_i_depth_write(dir, current_depth);

 if (inode && is_inode_flag_set(inode, FI_INC_LINK))
  clear_inode_flag(inode, FI_INC_LINK);
}
