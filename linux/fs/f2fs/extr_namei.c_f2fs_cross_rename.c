
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_ino; void* i_ctime; int i_mode; } ;
struct f2fs_sb_info {int sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int d_name; struct inode* d_inode; } ;
struct TYPE_4__ {int i_sem; int i_projid; } ;
struct TYPE_3__ {scalar_t__ fsync_mode; } ;


 int EIO ;
 int EMLINK ;
 int ENOENT ;
 int ENOSPC ;
 int EXDEV ;
 TYPE_2__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_LINK_MAX ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int FI_PROJ_INHERIT ;
 scalar_t__ FSYNC_MODE_STRICT ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int REQ_TIME ;
 scalar_t__ S_ISDIR (int ) ;
 int TRANS_DIR_INO ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_write (int *) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_add_ino_entry (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,int *,struct page**) ;
 int f2fs_i_links_write (struct inode*,int) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 struct f2fs_dir_entry* f2fs_parent_dir (struct inode*,struct page**) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_set_link (struct inode*,struct f2fs_dir_entry*,struct page*,struct inode*) ;
 int f2fs_sync_fs (int ,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int file_lost_pino (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int projid_eq (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int f2fs_cross_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(old_dir);
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct page *old_dir_page, *new_dir_page;
 struct page *old_page, *new_page;
 struct f2fs_dir_entry *old_dir_entry = ((void*)0), *new_dir_entry = ((void*)0);
 struct f2fs_dir_entry *old_entry, *new_entry;
 int old_nlink = 0, new_nlink = 0;
 int err;

 if (unlikely(f2fs_cp_error(sbi)))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(sbi))
  return -ENOSPC;

 if ((is_inode_flag_set(new_dir, FI_PROJ_INHERIT) &&
   !projid_eq(F2FS_I(new_dir)->i_projid,
   F2FS_I(old_dentry->d_inode)->i_projid)) ||
     (is_inode_flag_set(new_dir, FI_PROJ_INHERIT) &&
   !projid_eq(F2FS_I(old_dir)->i_projid,
   F2FS_I(new_dentry->d_inode)->i_projid)))
  return -EXDEV;

 err = dquot_initialize(old_dir);
 if (err)
  goto out;

 err = dquot_initialize(new_dir);
 if (err)
  goto out;

 err = -ENOENT;
 old_entry = f2fs_find_entry(old_dir, &old_dentry->d_name, &old_page);
 if (!old_entry) {
  if (IS_ERR(old_page))
   err = PTR_ERR(old_page);
  goto out;
 }

 new_entry = f2fs_find_entry(new_dir, &new_dentry->d_name, &new_page);
 if (!new_entry) {
  if (IS_ERR(new_page))
   err = PTR_ERR(new_page);
  goto out_old;
 }


 if (old_dir != new_dir) {
  if (S_ISDIR(old_inode->i_mode)) {
   old_dir_entry = f2fs_parent_dir(old_inode,
       &old_dir_page);
   if (!old_dir_entry) {
    if (IS_ERR(old_dir_page))
     err = PTR_ERR(old_dir_page);
    goto out_new;
   }
  }

  if (S_ISDIR(new_inode->i_mode)) {
   new_dir_entry = f2fs_parent_dir(new_inode,
       &new_dir_page);
   if (!new_dir_entry) {
    if (IS_ERR(new_dir_page))
     err = PTR_ERR(new_dir_page);
    goto out_old_dir;
   }
  }
 }






 if ((!old_dir_entry || !new_dir_entry) &&
    old_dir_entry != new_dir_entry) {
  old_nlink = old_dir_entry ? -1 : 1;
  new_nlink = -old_nlink;
  err = -EMLINK;
  if ((old_nlink > 0 && old_dir->i_nlink >= F2FS_LINK_MAX) ||
   (new_nlink > 0 && new_dir->i_nlink >= F2FS_LINK_MAX))
   goto out_new_dir;
 }

 f2fs_balance_fs(sbi, 1);

 f2fs_lock_op(sbi);


 if (old_dir_entry)
  f2fs_set_link(old_inode, old_dir_entry, old_dir_page, new_dir);


 if (new_dir_entry)
  f2fs_set_link(new_inode, new_dir_entry, new_dir_page, old_dir);


 f2fs_set_link(old_dir, old_entry, old_page, new_inode);

 down_write(&F2FS_I(old_inode)->i_sem);
 file_lost_pino(old_inode);
 up_write(&F2FS_I(old_inode)->i_sem);

 old_dir->i_ctime = current_time(old_dir);
 if (old_nlink) {
  down_write(&F2FS_I(old_dir)->i_sem);
  f2fs_i_links_write(old_dir, old_nlink > 0);
  up_write(&F2FS_I(old_dir)->i_sem);
 }
 f2fs_mark_inode_dirty_sync(old_dir, 0);


 f2fs_set_link(new_dir, new_entry, new_page, old_inode);

 down_write(&F2FS_I(new_inode)->i_sem);
 file_lost_pino(new_inode);
 up_write(&F2FS_I(new_inode)->i_sem);

 new_dir->i_ctime = current_time(new_dir);
 if (new_nlink) {
  down_write(&F2FS_I(new_dir)->i_sem);
  f2fs_i_links_write(new_dir, new_nlink > 0);
  up_write(&F2FS_I(new_dir)->i_sem);
 }
 f2fs_mark_inode_dirty_sync(new_dir, 0);

 if (F2FS_OPTION(sbi).fsync_mode == FSYNC_MODE_STRICT) {
  f2fs_add_ino_entry(sbi, old_dir->i_ino, TRANS_DIR_INO);
  f2fs_add_ino_entry(sbi, new_dir->i_ino, TRANS_DIR_INO);
 }

 f2fs_unlock_op(sbi);

 if (IS_DIRSYNC(old_dir) || IS_DIRSYNC(new_dir))
  f2fs_sync_fs(sbi->sb, 1);

 f2fs_update_time(sbi, REQ_TIME);
 return 0;
out_new_dir:
 if (new_dir_entry) {
  f2fs_put_page(new_dir_page, 0);
 }
out_old_dir:
 if (old_dir_entry) {
  f2fs_put_page(old_dir_page, 0);
 }
out_new:
 f2fs_put_page(new_page, 0);
out_old:
 f2fs_put_page(old_page, 0);
out:
 return err;
}
