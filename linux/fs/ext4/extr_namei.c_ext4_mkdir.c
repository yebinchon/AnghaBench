
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int d_name; } ;
typedef int handle_t ;


 int EMLINK ;
 int ENOSPC ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_DIR_LINK_MAX (struct inode*) ;
 int EXT4_HT_DIR ;
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int clear_nlink (struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext4_add_entry (int *,struct dentry*,struct inode*) ;
 int ext4_dir_inode_operations ;
 int ext4_dir_operations ;
 int ext4_handle_sync (int *) ;
 int ext4_inc_count (int *,struct inode*) ;
 int ext4_init_new_dir (int *,struct inode*,struct inode*) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 struct inode* ext4_new_inode_start_handle (struct inode*,int,int *,int ,int *,int ,int) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_update_dx_flag (struct inode*) ;
 int iput (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext4_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 handle_t *handle;
 struct inode *inode;
 int err, credits, retries = 0;

 if (EXT4_DIR_LINK_MAX(dir))
  return -EMLINK;

 err = dquot_initialize(dir);
 if (err)
  return err;

 credits = (EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3);
retry:
 inode = ext4_new_inode_start_handle(dir, S_IFDIR | mode,
         &dentry->d_name,
         0, ((void*)0), EXT4_HT_DIR, credits);
 handle = ext4_journal_current_handle();
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_stop;

 inode->i_op = &ext4_dir_inode_operations;
 inode->i_fop = &ext4_dir_operations;
 err = ext4_init_new_dir(handle, dir, inode);
 if (err)
  goto out_clear_inode;
 err = ext4_mark_inode_dirty(handle, inode);
 if (!err)
  err = ext4_add_entry(handle, dentry, inode);
 if (err) {
out_clear_inode:
  clear_nlink(inode);
  unlock_new_inode(inode);
  ext4_mark_inode_dirty(handle, inode);
  iput(inode);
  goto out_stop;
 }
 ext4_inc_count(handle, dir);
 ext4_update_dx_flag(dir);
 err = ext4_mark_inode_dirty(handle, dir);
 if (err)
  goto out_clear_inode;
 d_instantiate_new(dentry, inode);
 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

out_stop:
 if (handle)
  ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
