
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blocks; int i_ino; int i_mode; } ;
struct dnode_of_data {int dummy; } ;


 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int LOOKUP_NODE ;
 int SBI_NEED_FSCK ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int f2fs_cp_error (int ) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,int ,int ) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int) ;
 int f2fs_truncate_xattr_node (struct inode*) ;
 int f2fs_warn (int ,char*,int ,unsigned long long) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_sbi_flag (int ,int ) ;
 int truncate_node (struct dnode_of_data*) ;
 scalar_t__ unlikely (int) ;

int f2fs_remove_inode_page(struct inode *inode)
{
 struct dnode_of_data dn;
 int err;

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), inode->i_ino);
 err = f2fs_get_dnode_of_data(&dn, 0, LOOKUP_NODE);
 if (err)
  return err;

 err = f2fs_truncate_xattr_node(inode);
 if (err) {
  f2fs_put_dnode(&dn);
  return err;
 }


 if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
    S_ISLNK(inode->i_mode))
  f2fs_truncate_data_blocks_range(&dn, 1);


 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode)))) {
  f2fs_put_dnode(&dn);
  return -EIO;
 }

 if (unlikely(inode->i_blocks != 0 && inode->i_blocks != 8)) {
  f2fs_warn(F2FS_I_SB(inode), "Inconsistent i_blocks, ino:%lu, iblocks:%llu",
     inode->i_ino, (unsigned long long)inode->i_blocks);
  set_sbi_flag(F2FS_I_SB(inode), SBI_NEED_FSCK);
 }


 err = truncate_node(&dn);
 if (err) {
  f2fs_put_dnode(&dn);
  return err;
 }
 return 0;
}
