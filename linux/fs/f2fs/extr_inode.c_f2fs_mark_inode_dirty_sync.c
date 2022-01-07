
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int FI_NEW_INODE ;
 scalar_t__ f2fs_inode_dirtied (struct inode*,int) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int mark_inode_dirty_sync (struct inode*) ;

void f2fs_mark_inode_dirty_sync(struct inode *inode, bool sync)
{
 if (is_inode_flag_set(inode, FI_NEW_INODE))
  return;

 if (f2fs_inode_dirtied(inode, sync))
  return;

 mark_inode_dirty_sync(inode);
}
