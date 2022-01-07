
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int extent_state; } ;
struct TYPE_3__ {int ext_tree; } ;


 int HFSPLUS_EXT_DIRTY ;
 TYPE_2__* HFSPLUS_I (struct inode*) ;
 TYPE_1__* HFSPLUS_SB (int ) ;
 int __hfsplus_ext_write_extent (struct inode*,struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;

__attribute__((used)) static int hfsplus_ext_write_extent_locked(struct inode *inode)
{
 int res = 0;

 if (HFSPLUS_I(inode)->extent_state & HFSPLUS_EXT_DIRTY) {
  struct hfs_find_data fd;

  res = hfs_find_init(HFSPLUS_SB(inode->i_sb)->ext_tree, &fd);
  if (res)
   return res;
  res = __hfsplus_ext_write_extent(inode, &fd);
  hfs_find_exit(&fd);
 }
 return res;
}
