
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_mode; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;
typedef scalar_t__ __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned long long,unsigned long) ;
 int EXT4_FREE_BLOCKS_FORGET ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int EXT4_FREE_BLOCKS_VALIDATED ;
 int EXT4_INODE_EA_INODE ;
 int EXT4_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int ext4_blocks_for_truncate (struct inode*) ;
 int ext4_data_block_valid (int ,scalar_t__,unsigned long) ;
 int ext4_free_blocks (int *,struct inode*,int *,scalar_t__,unsigned long,int) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int ext4_std_error (int ,int) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_truncate_restart_trans (int *,struct inode*,int ) ;
 scalar_t__ try_to_extend_transaction (int *,struct inode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_clear_blocks(handle_t *handle, struct inode *inode,
        struct buffer_head *bh,
        ext4_fsblk_t block_to_free,
        unsigned long count, __le32 *first,
        __le32 *last)
{
 __le32 *p;
 int flags = EXT4_FREE_BLOCKS_VALIDATED;
 int err;

 if (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode) ||
     ext4_test_inode_flag(inode, EXT4_INODE_EA_INODE))
  flags |= EXT4_FREE_BLOCKS_FORGET | EXT4_FREE_BLOCKS_METADATA;
 else if (ext4_should_journal_data(inode))
  flags |= EXT4_FREE_BLOCKS_FORGET;

 if (!ext4_data_block_valid(EXT4_SB(inode->i_sb), block_to_free,
       count)) {
  EXT4_ERROR_INODE(inode, "attempt to clear invalid "
     "blocks %llu len %lu",
     (unsigned long long) block_to_free, count);
  return 1;
 }

 if (try_to_extend_transaction(handle, inode)) {
  if (bh) {
   BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
   err = ext4_handle_dirty_metadata(handle, inode, bh);
   if (unlikely(err))
    goto out_err;
  }
  err = ext4_mark_inode_dirty(handle, inode);
  if (unlikely(err))
   goto out_err;
  err = ext4_truncate_restart_trans(handle, inode,
     ext4_blocks_for_truncate(inode));
  if (unlikely(err))
   goto out_err;
  if (bh) {
   BUFFER_TRACE(bh, "retaking write access");
   err = ext4_journal_get_write_access(handle, bh);
   if (unlikely(err))
    goto out_err;
  }
 }

 for (p = first; p < last; p++)
  *p = 0;

 ext4_free_blocks(handle, inode, ((void*)0), block_to_free, count, flags);
 return 0;
out_err:
 ext4_std_error(inode->i_sb, err);
 return err;
}
