
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int d_name; } ;
typedef int handle_t ;


 int ENOSPC ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_HT_DIR ;
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext4_add_nondir (int *,struct dentry*,struct inode*) ;
 int ext4_file_inode_operations ;
 int ext4_file_operations ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 struct inode* ext4_new_inode_start_handle (struct inode*,int ,int *,int ,int *,int ,int) ;
 int ext4_set_aops (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;

__attribute__((used)) static int ext4_create(struct inode *dir, struct dentry *dentry, umode_t mode,
         bool excl)
{
 handle_t *handle;
 struct inode *inode;
 int err, credits, retries = 0;

 err = dquot_initialize(dir);
 if (err)
  return err;

 credits = (EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3);
retry:
 inode = ext4_new_inode_start_handle(dir, mode, &dentry->d_name, 0,
         ((void*)0), EXT4_HT_DIR, credits);
 handle = ext4_journal_current_handle();
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &ext4_file_inode_operations;
  inode->i_fop = &ext4_file_operations;
  ext4_set_aops(inode);
  err = ext4_add_nondir(handle, dentry, inode);
  if (!err && IS_DIRSYNC(dir))
   ext4_handle_sync(handle);
 }
 if (handle)
  ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
