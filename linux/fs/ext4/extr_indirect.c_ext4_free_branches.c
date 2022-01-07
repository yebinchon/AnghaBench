
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;
typedef scalar_t__ __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EXT4_ADDR_PER_BLOCK (int ) ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned long,int) ;
 int EXT4_ERROR_INODE_BLOCK (struct inode*,scalar_t__,char*) ;
 int EXT4_FREE_BLOCKS_FORGET ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int EXT4_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int ext4_blocks_for_truncate (struct inode*) ;
 int ext4_data_block_valid (int ,scalar_t__,int) ;
 int ext4_free_blocks (int *,struct inode*,int *,scalar_t__,int,int) ;
 int ext4_free_data (int *,struct inode*,struct buffer_head*,scalar_t__*,scalar_t__*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_handle_is_aborted (int *) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_truncate_restart_trans (int *,struct inode*,int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;
 scalar_t__ try_to_extend_transaction (int *,struct inode*) ;

__attribute__((used)) static void ext4_free_branches(handle_t *handle, struct inode *inode,
          struct buffer_head *parent_bh,
          __le32 *first, __le32 *last, int depth)
{
 ext4_fsblk_t nr;
 __le32 *p;

 if (ext4_handle_is_aborted(handle))
  return;

 if (depth--) {
  struct buffer_head *bh;
  int addr_per_block = EXT4_ADDR_PER_BLOCK(inode->i_sb);
  p = last;
  while (--p >= first) {
   nr = le32_to_cpu(*p);
   if (!nr)
    continue;

   if (!ext4_data_block_valid(EXT4_SB(inode->i_sb),
         nr, 1)) {
    EXT4_ERROR_INODE(inode,
       "invalid indirect mapped "
       "block %lu (level %d)",
       (unsigned long) nr, depth);
    break;
   }


   bh = sb_bread(inode->i_sb, nr);





   if (!bh) {
    EXT4_ERROR_INODE_BLOCK(inode, nr,
             "Read failure");
    continue;
   }


   BUFFER_TRACE(bh, "free child branches");
   ext4_free_branches(handle, inode, bh,
     (__le32 *) bh->b_data,
     (__le32 *) bh->b_data + addr_per_block,
     depth);
   brelse(bh);
   if (ext4_handle_is_aborted(handle))
    return;
   if (try_to_extend_transaction(handle, inode)) {
    ext4_mark_inode_dirty(handle, inode);
    ext4_truncate_restart_trans(handle, inode,
         ext4_blocks_for_truncate(inode));
   }
   ext4_free_blocks(handle, inode, ((void*)0), nr, 1,
      EXT4_FREE_BLOCKS_METADATA|
      EXT4_FREE_BLOCKS_FORGET);

   if (parent_bh) {




    BUFFER_TRACE(parent_bh, "get_write_access");
    if (!ext4_journal_get_write_access(handle,
           parent_bh)){
     *p = 0;
     BUFFER_TRACE(parent_bh,
     "call ext4_handle_dirty_metadata");
     ext4_handle_dirty_metadata(handle,
           inode,
           parent_bh);
    }
   }
  }
 } else {

  BUFFER_TRACE(parent_bh, "free data blocks");
  ext4_free_data(handle, inode, parent_bh, first, last);
 }
}
