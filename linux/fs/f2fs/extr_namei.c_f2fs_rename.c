
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ino; int i_mode; int i_state; void* i_ctime; int i_nlink; } ;
struct f2fs_sb_info {int sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int d_name; struct inode* d_inode; } ;
struct TYPE_4__ {int i_sem; int i_pino; int i_projid; } ;
struct TYPE_3__ {scalar_t__ fsync_mode; } ;


 int EIO ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTEMPTY ;
 int EXDEV ;
 TYPE_2__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int FI_INC_LINK ;
 int FI_PROJ_INHERIT ;
 scalar_t__ FSYNC_MODE_STRICT ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int I_LINKABLE ;
 int PTR_ERR (struct page*) ;
 unsigned int RENAME_WHITEOUT ;
 int REQ_TIME ;
 scalar_t__ S_ISDIR (int ) ;
 int TRANS_DIR_INO ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_write (int *) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_acquire_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_add_ino_entry (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_add_link (struct dentry*,struct inode*) ;
 int f2fs_add_orphan_inode (struct inode*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_create_whiteout (struct inode*,struct inode**) ;
 int f2fs_delete_entry (struct f2fs_dir_entry*,struct page*,struct inode*,int *) ;
 int f2fs_empty_dir (struct inode*) ;
 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,int *,struct page**) ;
 int f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_i_links_write (struct inode*,int) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 struct f2fs_dir_entry* f2fs_parent_dir (struct inode*,struct page**) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_release_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_set_link (struct inode*,struct f2fs_dir_entry*,struct page*,struct inode*) ;
 int f2fs_sync_fs (int ,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int file_lost_pino (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int projid_eq (int ,int ) ;
 int set_inode_flag (struct inode*,int ) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int f2fs_rename(struct inode *old_dir, struct dentry *old_dentry,
   struct inode *new_dir, struct dentry *new_dentry,
   unsigned int flags)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(old_dir);
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct inode *whiteout = ((void*)0);
 struct page *old_dir_page;
 struct page *old_page, *new_page = ((void*)0);
 struct f2fs_dir_entry *old_dir_entry = ((void*)0);
 struct f2fs_dir_entry *old_entry;
 struct f2fs_dir_entry *new_entry;
 bool is_old_inline = f2fs_has_inline_dentry(old_dir);
 int err;

 if (unlikely(f2fs_cp_error(sbi)))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(sbi))
  return -ENOSPC;

 if (is_inode_flag_set(new_dir, FI_PROJ_INHERIT) &&
   (!projid_eq(F2FS_I(new_dir)->i_projid,
   F2FS_I(old_dentry->d_inode)->i_projid)))
  return -EXDEV;

 err = dquot_initialize(old_dir);
 if (err)
  goto out;

 err = dquot_initialize(new_dir);
 if (err)
  goto out;

 if (new_inode) {
  err = dquot_initialize(new_inode);
  if (err)
   goto out;
 }

 err = -ENOENT;
 old_entry = f2fs_find_entry(old_dir, &old_dentry->d_name, &old_page);
 if (!old_entry) {
  if (IS_ERR(old_page))
   err = PTR_ERR(old_page);
  goto out;
 }

 if (S_ISDIR(old_inode->i_mode)) {
  old_dir_entry = f2fs_parent_dir(old_inode, &old_dir_page);
  if (!old_dir_entry) {
   if (IS_ERR(old_dir_page))
    err = PTR_ERR(old_dir_page);
   goto out_old;
  }
 }

 if (flags & RENAME_WHITEOUT) {
  err = f2fs_create_whiteout(old_dir, &whiteout);
  if (err)
   goto out_dir;
 }

 if (new_inode) {

  err = -ENOTEMPTY;
  if (old_dir_entry && !f2fs_empty_dir(new_inode))
   goto out_whiteout;

  err = -ENOENT;
  new_entry = f2fs_find_entry(new_dir, &new_dentry->d_name,
      &new_page);
  if (!new_entry) {
   if (IS_ERR(new_page))
    err = PTR_ERR(new_page);
   goto out_whiteout;
  }

  f2fs_balance_fs(sbi, 1);

  f2fs_lock_op(sbi);

  err = f2fs_acquire_orphan_inode(sbi);
  if (err)
   goto put_out_dir;

  f2fs_set_link(new_dir, new_entry, new_page, old_inode);

  new_inode->i_ctime = current_time(new_inode);
  down_write(&F2FS_I(new_inode)->i_sem);
  if (old_dir_entry)
   f2fs_i_links_write(new_inode, 0);
  f2fs_i_links_write(new_inode, 0);
  up_write(&F2FS_I(new_inode)->i_sem);

  if (!new_inode->i_nlink)
   f2fs_add_orphan_inode(new_inode);
  else
   f2fs_release_orphan_inode(sbi);
 } else {
  f2fs_balance_fs(sbi, 1);

  f2fs_lock_op(sbi);

  err = f2fs_add_link(new_dentry, old_inode);
  if (err) {
   f2fs_unlock_op(sbi);
   goto out_whiteout;
  }

  if (old_dir_entry)
   f2fs_i_links_write(new_dir, 1);
  if (is_old_inline && !f2fs_has_inline_dentry(old_dir)) {
   f2fs_put_page(old_page, 0);
   old_page = ((void*)0);

   old_entry = f2fs_find_entry(old_dir,
      &old_dentry->d_name, &old_page);
   if (!old_entry) {
    err = -ENOENT;
    if (IS_ERR(old_page))
     err = PTR_ERR(old_page);
    f2fs_unlock_op(sbi);
    goto out_whiteout;
   }
  }
 }

 down_write(&F2FS_I(old_inode)->i_sem);
 if (!old_dir_entry || whiteout)
  file_lost_pino(old_inode);
 else
  F2FS_I(old_inode)->i_pino = new_dir->i_ino;
 up_write(&F2FS_I(old_inode)->i_sem);

 old_inode->i_ctime = current_time(old_inode);
 f2fs_mark_inode_dirty_sync(old_inode, 0);

 f2fs_delete_entry(old_entry, old_page, old_dir, ((void*)0));

 if (whiteout) {
  whiteout->i_state |= I_LINKABLE;
  set_inode_flag(whiteout, FI_INC_LINK);
  err = f2fs_add_link(old_dentry, whiteout);
  if (err)
   goto put_out_dir;
  whiteout->i_state &= ~I_LINKABLE;
  iput(whiteout);
 }

 if (old_dir_entry) {
  if (old_dir != new_dir && !whiteout)
   f2fs_set_link(old_inode, old_dir_entry,
      old_dir_page, new_dir);
  else
   f2fs_put_page(old_dir_page, 0);
  f2fs_i_links_write(old_dir, 0);
 }
 if (F2FS_OPTION(sbi).fsync_mode == FSYNC_MODE_STRICT) {
  f2fs_add_ino_entry(sbi, new_dir->i_ino, TRANS_DIR_INO);
  if (S_ISDIR(old_inode->i_mode))
   f2fs_add_ino_entry(sbi, old_inode->i_ino,
       TRANS_DIR_INO);
 }

 f2fs_unlock_op(sbi);

 if (IS_DIRSYNC(old_dir) || IS_DIRSYNC(new_dir))
  f2fs_sync_fs(sbi->sb, 1);

 f2fs_update_time(sbi, REQ_TIME);
 return 0;

put_out_dir:
 f2fs_unlock_op(sbi);
 if (new_page)
  f2fs_put_page(new_page, 0);
out_whiteout:
 if (whiteout)
  iput(whiteout);
out_dir:
 if (old_dir_entry)
  f2fs_put_page(old_dir_page, 0);
out_old:
 f2fs_put_page(old_page, 0);
out:
 return err;
}
