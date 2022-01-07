
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;


 scalar_t__ HFSPLUS_FIRSTUSER_CNID ;
 scalar_t__ HFSPLUS_ROOT_CNID ;
 int INODE ;
 int hfs_dbg (int ,char*,scalar_t__) ;
 int hfsplus_cat_write_inode (struct inode*) ;
 int hfsplus_ext_write_extent (struct inode*) ;
 int hfsplus_system_write_inode (struct inode*) ;

__attribute__((used)) static int hfsplus_write_inode(struct inode *inode,
  struct writeback_control *wbc)
{
 int err;

 hfs_dbg(INODE, "hfsplus_write_inode: %lu\n", inode->i_ino);

 err = hfsplus_ext_write_extent(inode);
 if (err)
  return err;

 if (inode->i_ino >= HFSPLUS_FIRSTUSER_CNID ||
     inode->i_ino == HFSPLUS_ROOT_CNID)
  return hfsplus_cat_write_inode(inode);
 else
  return hfsplus_system_write_inode(inode);
}
