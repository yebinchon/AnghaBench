
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct extent_tree {int lock; TYPE_1__ largest; } ;
struct TYPE_4__ {struct extent_tree* extent_tree; } ;


 TYPE_2__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_NO_EXTENT ;
 int __free_extent_tree (struct f2fs_sb_info*,struct extent_tree*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_may_extent_tree (struct inode*) ;
 int set_inode_flag (struct inode*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void f2fs_drop_extent_tree(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et = F2FS_I(inode)->extent_tree;
 bool updated = 0;

 if (!f2fs_may_extent_tree(inode))
  return;

 set_inode_flag(inode, FI_NO_EXTENT);

 write_lock(&et->lock);
 __free_extent_tree(sbi, et);
 if (et->largest.len) {
  et->largest.len = 0;
  updated = 1;
 }
 write_unlock(&et->lock);
 if (updated)
  f2fs_mark_inode_dirty_sync(inode, 1);
}
