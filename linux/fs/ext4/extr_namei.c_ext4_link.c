
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_nlink; int i_sb; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_projid; } ;


 int EMLINK ;
 int ENOSPC ;
 int EXDEV ;
 scalar_t__ EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_HT_DIR ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 int EXT4_INODE_PROJINHERIT ;
 int EXT4_LINK_MAX ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext4_add_entry (int *,struct dentry*,struct inode*) ;
 int ext4_handle_sync (int *) ;
 int ext4_inc_count (int *,struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,scalar_t__) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int fscrypt_prepare_link (struct dentry*,struct inode*,struct dentry*) ;
 int ihold (struct inode*) ;
 int iput (struct inode*) ;
 int projid_eq (int ,int ) ;

__attribute__((used)) static int ext4_link(struct dentry *old_dentry,
       struct inode *dir, struct dentry *dentry)
{
 handle_t *handle;
 struct inode *inode = d_inode(old_dentry);
 int err, retries = 0;

 if (inode->i_nlink >= EXT4_LINK_MAX)
  return -EMLINK;

 err = fscrypt_prepare_link(old_dentry, dir, dentry);
 if (err)
  return err;

 if ((ext4_test_inode_flag(dir, EXT4_INODE_PROJINHERIT)) &&
     (!projid_eq(EXT4_I(dir)->i_projid,
   EXT4_I(old_dentry->d_inode)->i_projid)))
  return -EXDEV;

 err = dquot_initialize(dir);
 if (err)
  return err;

retry:
 handle = ext4_journal_start(dir, EXT4_HT_DIR,
  (EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
   EXT4_INDEX_EXTRA_TRANS_BLOCKS) + 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 inode->i_ctime = current_time(inode);
 ext4_inc_count(handle, inode);
 ihold(inode);

 err = ext4_add_entry(handle, dentry, inode);
 if (!err) {
  ext4_mark_inode_dirty(handle, inode);



  if (inode->i_nlink == 1)
   ext4_orphan_del(handle, inode);
  d_instantiate(dentry, inode);
 } else {
  drop_nlink(inode);
  iput(inode);
 }
 ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
