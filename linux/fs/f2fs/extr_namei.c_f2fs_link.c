
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ctime; } ;
struct f2fs_sb_info {int sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int i_projid; } ;


 int EIO ;
 int ENOSPC ;
 int EXDEV ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_INC_LINK ;
 int FI_PROJ_INHERIT ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_add_link (struct dentry*,struct inode*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_sync_fs (int ,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int fscrypt_prepare_link (struct dentry*,struct inode*,struct dentry*) ;
 int ihold (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int projid_eq (int ,int ) ;
 int set_inode_flag (struct inode*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_link(struct dentry *old_dentry, struct inode *dir,
  struct dentry *dentry)
{
 struct inode *inode = d_inode(old_dentry);
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);
 int err;

 if (unlikely(f2fs_cp_error(sbi)))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(sbi))
  return -ENOSPC;

 err = fscrypt_prepare_link(old_dentry, dir, dentry);
 if (err)
  return err;

 if (is_inode_flag_set(dir, FI_PROJ_INHERIT) &&
   (!projid_eq(F2FS_I(dir)->i_projid,
   F2FS_I(old_dentry->d_inode)->i_projid)))
  return -EXDEV;

 err = dquot_initialize(dir);
 if (err)
  return err;

 f2fs_balance_fs(sbi, 1);

 inode->i_ctime = current_time(inode);
 ihold(inode);

 set_inode_flag(inode, FI_INC_LINK);
 f2fs_lock_op(sbi);
 err = f2fs_add_link(dentry, inode);
 if (err)
  goto out;
 f2fs_unlock_op(sbi);

 d_instantiate(dentry, inode);

 if (IS_DIRSYNC(dir))
  f2fs_sync_fs(sbi->sb, 1);
 return 0;
out:
 clear_inode_flag(inode, FI_INC_LINK);
 iput(inode);
 f2fs_unlock_op(sbi);
 return err;
}
