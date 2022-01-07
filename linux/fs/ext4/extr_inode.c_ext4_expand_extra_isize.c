
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_iloc {int bh; } ;
typedef int handle_t ;


 int BUFFER_TRACE (int ,char*) ;
 int EOVERFLOW ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_HT_INODE ;
 int EXT4_STATE_NO_EXPAND ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int __ext4_expand_extra_isize (struct inode*,unsigned int,struct ext4_iloc*,int *,int*) ;
 int brelse (int ) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int * ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;

int ext4_expand_extra_isize(struct inode *inode,
       unsigned int new_extra_isize,
       struct ext4_iloc *iloc)
{
 handle_t *handle;
 int no_expand;
 int error, rc;

 if (ext4_test_inode_state(inode, EXT4_STATE_NO_EXPAND)) {
  brelse(iloc->bh);
  return -EOVERFLOW;
 }

 handle = ext4_journal_start(inode, EXT4_HT_INODE,
        EXT4_DATA_TRANS_BLOCKS(inode->i_sb));
 if (IS_ERR(handle)) {
  error = PTR_ERR(handle);
  brelse(iloc->bh);
  return error;
 }

 ext4_write_lock_xattr(inode, &no_expand);

 BUFFER_TRACE(iloc->bh, "get_write_access");
 error = ext4_journal_get_write_access(handle, iloc->bh);
 if (error) {
  brelse(iloc->bh);
  goto out_stop;
 }

 error = __ext4_expand_extra_isize(inode, new_extra_isize, iloc,
       handle, &no_expand);

 rc = ext4_mark_iloc_dirty(handle, inode, iloc);
 if (!error)
  error = rc;

 ext4_write_unlock_xattr(inode, &no_expand);
out_stop:
 ext4_journal_stop(handle);
 return error;
}
