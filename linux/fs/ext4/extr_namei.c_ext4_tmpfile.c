
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
typedef int handle_t ;


 int ENOSPC ;
 int EXT4_HT_DIR ;
 scalar_t__ EXT4_MAXQUOTAS_INIT_BLOCKS (int ) ;
 scalar_t__ EXT4_XATTR_TRANS_BLOCKS ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext4_file_inode_operations ;
 int ext4_file_operations ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 struct inode* ext4_new_inode_start_handle (struct inode*,int ,int *,int ,int *,int ,scalar_t__) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_set_aops (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int mark_inode_dirty (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext4_tmpfile(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 handle_t *handle;
 struct inode *inode;
 int err, retries = 0;

 err = dquot_initialize(dir);
 if (err)
  return err;

retry:
 inode = ext4_new_inode_start_handle(dir, mode,
         ((void*)0), 0, ((void*)0),
         EXT4_HT_DIR,
   EXT4_MAXQUOTAS_INIT_BLOCKS(dir->i_sb) +
     4 + EXT4_XATTR_TRANS_BLOCKS);
 handle = ext4_journal_current_handle();
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &ext4_file_inode_operations;
  inode->i_fop = &ext4_file_operations;
  ext4_set_aops(inode);
  d_tmpfile(dentry, inode);
  err = ext4_orphan_add(handle, inode);
  if (err)
   goto err_unlock_inode;
  mark_inode_dirty(inode);
  unlock_new_inode(inode);
 }
 if (handle)
  ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
err_unlock_inode:
 ext4_journal_stop(handle);
 unlock_new_inode(inode);
 return err;
}
