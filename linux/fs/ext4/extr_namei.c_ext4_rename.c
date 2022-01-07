
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct inode {scalar_t__ i_nlink; scalar_t__ i_ino; void* i_mtime; void* i_ctime; int i_mode; int i_sb; } ;
struct ext4_renament {struct inode* bh; struct inode* dir_bh; struct inode* inode; struct inode* dir; struct dentry* dentry; TYPE_1__* de; int inlined; } ;
struct dentry {int d_name; struct inode* d_inode; } ;
typedef struct inode handle_t ;
struct TYPE_4__ {int i_projid; } ;
struct TYPE_3__ {int file_type; int inode; } ;


 int EFSCORRUPTED ;
 int EMLINK ;
 int ENOENT ;
 int ENOTEMPTY ;
 int EXDEV ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_DIR_LINK_MAX (struct inode*) ;
 int EXT4_ERROR_INODE (struct inode*,char*) ;
 int EXT4_FT_CHRDEV ;
 int EXT4_HT_DIR ;
 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 int EXT4_INODE_INLINE_DATA ;
 int EXT4_INODE_PROJINHERIT ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int NO_AUTO_DA_ALLOC ;
 int PTR_ERR (struct inode*) ;
 unsigned int RENAME_WHITEOUT ;
 scalar_t__ S_ISDIR (int ) ;
 int brelse (struct inode*) ;
 int clear_nlink (struct inode*) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext4_add_entry (struct inode*,struct dentry*,struct inode*) ;
 int ext4_alloc_da_blocks (struct inode*) ;
 int ext4_dec_count (struct inode*,struct inode*) ;
 int ext4_empty_dir (struct inode*) ;
 void* ext4_find_entry (struct inode*,int *,TYPE_1__**,int *) ;
 int ext4_handle_sync (struct inode*) ;
 int ext4_inc_count (struct inode*,struct inode*) ;
 struct inode* ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (struct inode*) ;
 int ext4_mark_inode_dirty (struct inode*,struct inode*) ;
 int ext4_orphan_add (struct inode*,struct inode*) ;
 int ext4_rename_delete (struct inode*,struct ext4_renament*,int) ;
 int ext4_rename_dir_finish (struct inode*,struct ext4_renament*,scalar_t__) ;
 int ext4_rename_dir_prepare (struct inode*,struct ext4_renament*) ;
 int ext4_setent (struct inode*,struct ext4_renament*,scalar_t__,int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_update_dx_flag (struct inode*) ;
 struct inode* ext4_whiteout_for_rename (struct ext4_renament*,int,struct inode**) ;
 int iput (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int projid_eq (int ,int ) ;
 int test_opt (int ,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext4_rename(struct inode *old_dir, struct dentry *old_dentry,
         struct inode *new_dir, struct dentry *new_dentry,
         unsigned int flags)
{
 handle_t *handle = ((void*)0);
 struct ext4_renament old = {
  .dir = old_dir,
  .dentry = old_dentry,
  .inode = d_inode(old_dentry),
 };
 struct ext4_renament new = {
  .dir = new_dir,
  .dentry = new_dentry,
  .inode = d_inode(new_dentry),
 };
 int force_reread;
 int retval;
 struct inode *whiteout = ((void*)0);
 int credits;
 u8 old_file_type;

 if (new.inode && new.inode->i_nlink == 0) {
  EXT4_ERROR_INODE(new.inode,
     "target of rename is already freed");
  return -EFSCORRUPTED;
 }

 if ((ext4_test_inode_flag(new_dir, EXT4_INODE_PROJINHERIT)) &&
     (!projid_eq(EXT4_I(new_dir)->i_projid,
   EXT4_I(old_dentry->d_inode)->i_projid)))
  return -EXDEV;

 retval = dquot_initialize(old.dir);
 if (retval)
  return retval;
 retval = dquot_initialize(new.dir);
 if (retval)
  return retval;



 if (new.inode) {
  retval = dquot_initialize(new.inode);
  if (retval)
   return retval;
 }

 old.bh = ext4_find_entry(old.dir, &old.dentry->d_name, &old.de, ((void*)0));
 if (IS_ERR(old.bh))
  return PTR_ERR(old.bh);






 retval = -ENOENT;
 if (!old.bh || le32_to_cpu(old.de->inode) != old.inode->i_ino)
  goto end_rename;

 new.bh = ext4_find_entry(new.dir, &new.dentry->d_name,
     &new.de, &new.inlined);
 if (IS_ERR(new.bh)) {
  retval = PTR_ERR(new.bh);
  new.bh = ((void*)0);
  goto end_rename;
 }
 if (new.bh) {
  if (!new.inode) {
   brelse(new.bh);
   new.bh = ((void*)0);
  }
 }
 if (new.inode && !test_opt(new.dir->i_sb, NO_AUTO_DA_ALLOC))
  ext4_alloc_da_blocks(old.inode);

 credits = (2 * EXT4_DATA_TRANS_BLOCKS(old.dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 2);
 if (!(flags & RENAME_WHITEOUT)) {
  handle = ext4_journal_start(old.dir, EXT4_HT_DIR, credits);
  if (IS_ERR(handle)) {
   retval = PTR_ERR(handle);
   handle = ((void*)0);
   goto end_rename;
  }
 } else {
  whiteout = ext4_whiteout_for_rename(&old, credits, &handle);
  if (IS_ERR(whiteout)) {
   retval = PTR_ERR(whiteout);
   whiteout = ((void*)0);
   goto end_rename;
  }
 }

 if (IS_DIRSYNC(old.dir) || IS_DIRSYNC(new.dir))
  ext4_handle_sync(handle);

 if (S_ISDIR(old.inode->i_mode)) {
  if (new.inode) {
   retval = -ENOTEMPTY;
   if (!ext4_empty_dir(new.inode))
    goto end_rename;
  } else {
   retval = -EMLINK;
   if (new.dir != old.dir && EXT4_DIR_LINK_MAX(new.dir))
    goto end_rename;
  }
  retval = ext4_rename_dir_prepare(handle, &old);
  if (retval)
   goto end_rename;
 }







 force_reread = (new.dir->i_ino == old.dir->i_ino &&
   ext4_test_inode_flag(new.dir, EXT4_INODE_INLINE_DATA));

 old_file_type = old.de->file_type;
 if (whiteout) {




  retval = ext4_setent(handle, &old, whiteout->i_ino,
         EXT4_FT_CHRDEV);
  if (retval)
   goto end_rename;
  ext4_mark_inode_dirty(handle, whiteout);
 }
 if (!new.bh) {
  retval = ext4_add_entry(handle, new.dentry, old.inode);
  if (retval)
   goto end_rename;
 } else {
  retval = ext4_setent(handle, &new,
         old.inode->i_ino, old_file_type);
  if (retval)
   goto end_rename;
 }
 if (force_reread)
  force_reread = !ext4_test_inode_flag(new.dir,
           EXT4_INODE_INLINE_DATA);





 old.inode->i_ctime = current_time(old.inode);
 ext4_mark_inode_dirty(handle, old.inode);

 if (!whiteout) {



  ext4_rename_delete(handle, &old, force_reread);
 }

 if (new.inode) {
  ext4_dec_count(handle, new.inode);
  new.inode->i_ctime = current_time(new.inode);
 }
 old.dir->i_ctime = old.dir->i_mtime = current_time(old.dir);
 ext4_update_dx_flag(old.dir);
 if (old.dir_bh) {
  retval = ext4_rename_dir_finish(handle, &old, new.dir->i_ino);
  if (retval)
   goto end_rename;

  ext4_dec_count(handle, old.dir);
  if (new.inode) {



   clear_nlink(new.inode);
  } else {
   ext4_inc_count(handle, new.dir);
   ext4_update_dx_flag(new.dir);
   ext4_mark_inode_dirty(handle, new.dir);
  }
 }
 ext4_mark_inode_dirty(handle, old.dir);
 if (new.inode) {
  ext4_mark_inode_dirty(handle, new.inode);
  if (!new.inode->i_nlink)
   ext4_orphan_add(handle, new.inode);
 }
 retval = 0;

end_rename:
 brelse(old.dir_bh);
 brelse(old.bh);
 brelse(new.bh);
 if (whiteout) {
  if (retval)
   drop_nlink(whiteout);
  unlock_new_inode(whiteout);
  iput(whiteout);
 }
 if (handle)
  ext4_journal_stop(handle);
 return retval;
}
