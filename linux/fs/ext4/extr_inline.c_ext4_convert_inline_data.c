
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_iloc {int * bh; } ;
typedef int handle_t ;


 int EXT4_HT_WRITE_PAGE ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int brelse (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_convert_inline_data_nolock (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;

int ext4_convert_inline_data(struct inode *inode)
{
 int error, needed_blocks, no_expand;
 handle_t *handle;
 struct ext4_iloc iloc;

 if (!ext4_has_inline_data(inode)) {
  ext4_clear_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
  return 0;
 }

 needed_blocks = ext4_writepage_trans_blocks(inode);

 iloc.bh = ((void*)0);
 error = ext4_get_inode_loc(inode, &iloc);
 if (error)
  return error;

 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
 if (IS_ERR(handle)) {
  error = PTR_ERR(handle);
  goto out_free;
 }

 ext4_write_lock_xattr(inode, &no_expand);
 if (ext4_has_inline_data(inode))
  error = ext4_convert_inline_data_nolock(handle, inode, &iloc);
 ext4_write_unlock_xattr(inode, &no_expand);
 ext4_journal_stop(handle);
out_free:
 brelse(iloc.bh);
 return error;
}
