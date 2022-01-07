
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int ext_tree; } ;


 int HFS_FLG_EXT_DIRTY ;
 TYPE_2__* HFS_I (struct inode*) ;
 TYPE_1__* HFS_SB (int ) ;
 int __hfs_ext_write_extent (struct inode*,struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;

int hfs_ext_write_extent(struct inode *inode)
{
 struct hfs_find_data fd;
 int res = 0;

 if (HFS_I(inode)->flags & HFS_FLG_EXT_DIRTY) {
  res = hfs_find_init(HFS_SB(inode->i_sb)->ext_tree, &fd);
  if (res)
   return res;
  res = __hfs_ext_write_extent(inode, &fd);
  hfs_find_exit(&fd);
 }
 return res;
}
