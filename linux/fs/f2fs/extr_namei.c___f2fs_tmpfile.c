
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_ino; TYPE_1__* i_mapping; int * i_fop; int * i_op; int i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int WHITEOUT_DEV ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_acquire_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_add_orphan_inode (struct inode*) ;
 int f2fs_alloc_nid_done (struct f2fs_sb_info*,int ) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_dblock_aops ;
 int f2fs_do_tmpfile (struct inode*,struct inode*) ;
 int f2fs_file_inode_operations ;
 int f2fs_file_operations ;
 int f2fs_handle_failed_inode (struct inode*) ;
 int f2fs_i_links_write (struct inode*,int) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 struct inode* f2fs_new_inode (struct inode*,int ) ;
 int f2fs_release_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_special_inode_operations ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int __f2fs_tmpfile(struct inode *dir, struct dentry *dentry,
     umode_t mode, struct inode **whiteout)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);
 struct inode *inode;
 int err;

 err = dquot_initialize(dir);
 if (err)
  return err;

 inode = f2fs_new_inode(dir, mode);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 if (whiteout) {
  init_special_inode(inode, inode->i_mode, WHITEOUT_DEV);
  inode->i_op = &f2fs_special_inode_operations;
 } else {
  inode->i_op = &f2fs_file_inode_operations;
  inode->i_fop = &f2fs_file_operations;
  inode->i_mapping->a_ops = &f2fs_dblock_aops;
 }

 f2fs_lock_op(sbi);
 err = f2fs_acquire_orphan_inode(sbi);
 if (err)
  goto out;

 err = f2fs_do_tmpfile(inode, dir);
 if (err)
  goto release_out;





 f2fs_add_orphan_inode(inode);
 f2fs_alloc_nid_done(sbi, inode->i_ino);

 if (whiteout) {
  f2fs_i_links_write(inode, 0);
  *whiteout = inode;
 } else {
  d_tmpfile(dentry, inode);
 }

 f2fs_unlock_op(sbi);
 unlock_new_inode(inode);

 f2fs_balance_fs(sbi, 1);
 return 0;

release_out:
 f2fs_release_orphan_inode(sbi);
out:
 f2fs_handle_failed_inode(inode);
 return err;
}
