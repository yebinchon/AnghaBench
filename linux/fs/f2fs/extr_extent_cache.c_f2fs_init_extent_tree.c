
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_extent {int dummy; } ;
struct TYPE_2__ {int extent_tree; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int FI_NO_EXTENT ;
 int __f2fs_init_extent_tree (struct inode*,struct f2fs_extent*) ;
 int set_inode_flag (struct inode*,int ) ;

bool f2fs_init_extent_tree(struct inode *inode, struct f2fs_extent *i_ext)
{
 bool ret = __f2fs_init_extent_tree(inode, i_ext);

 if (!F2FS_I(inode)->extent_tree)
  set_inode_flag(inode, FI_NO_EXTENT);

 return ret;
}
