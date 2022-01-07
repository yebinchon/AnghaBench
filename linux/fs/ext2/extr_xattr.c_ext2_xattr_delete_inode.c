
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct ext2_sb_info {int dummy; } ;
struct buffer_head {int b_blocknr; int b_count; } ;
typedef int __u32 ;
struct TYPE_5__ {int xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_4__ {scalar_t__ h_refcount; scalar_t__ h_hash; } ;


 int EA_BLOCK_CACHE (struct inode*) ;
 TYPE_3__* EXT2_I (struct inode*) ;
 struct ext2_sb_info* EXT2_SB (int ) ;
 TYPE_1__* HDR (struct buffer_head*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int atomic_read (int *) ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int down_write (int *) ;
 int dquot_free_block_nodirty (struct inode*,int) ;
 int ea_bdebug (struct buffer_head*,char*,int ) ;
 int ext2_data_block_valid (struct ext2_sb_info*,scalar_t__,int) ;
 int ext2_error (int ,char*,char*,int ,scalar_t__) ;
 int ext2_free_blocks (struct inode*,scalar_t__,int) ;
 int ext2_xattr_header_valid (TYPE_1__*) ;
 int get_bh (struct buffer_head*) ;
 int le32_add_cpu (scalar_t__*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mb_cache_entry_delete (int ,int ,int ) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int up_write (int *) ;

void
ext2_xattr_delete_inode(struct inode *inode)
{
 struct buffer_head *bh = ((void*)0);
 struct ext2_sb_info *sbi = EXT2_SB(inode->i_sb);

 down_write(&EXT2_I(inode)->xattr_sem);
 if (!EXT2_I(inode)->i_file_acl)
  goto cleanup;

 if (!ext2_data_block_valid(sbi, EXT2_I(inode)->i_file_acl, 1)) {
  ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
   "inode %ld: xattr block %d is out of data blocks range",
   inode->i_ino, EXT2_I(inode)->i_file_acl);
  goto cleanup;
 }

 bh = sb_bread(inode->i_sb, EXT2_I(inode)->i_file_acl);
 if (!bh) {
  ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
   "inode %ld: block %d read error", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  goto cleanup;
 }
 ea_bdebug(bh, "b_count=%d", atomic_read(&(bh->b_count)));
 if (!ext2_xattr_header_valid(HDR(bh))) {
  ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
   "inode %ld: bad block %d", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  goto cleanup;
 }
 lock_buffer(bh);
 if (HDR(bh)->h_refcount == cpu_to_le32(1)) {
  __u32 hash = le32_to_cpu(HDR(bh)->h_hash);





  mb_cache_entry_delete(EA_BLOCK_CACHE(inode), hash,
          bh->b_blocknr);
  ext2_free_blocks(inode, EXT2_I(inode)->i_file_acl, 1);
  get_bh(bh);
  bforget(bh);
  unlock_buffer(bh);
 } else {
  le32_add_cpu(&HDR(bh)->h_refcount, -1);
  ea_bdebug(bh, "refcount now=%d",
   le32_to_cpu(HDR(bh)->h_refcount));
  unlock_buffer(bh);
  mark_buffer_dirty(bh);
  if (IS_SYNC(inode))
   sync_dirty_buffer(bh);
  dquot_free_block_nodirty(inode, 1);
 }
 EXT2_I(inode)->i_file_acl = 0;

cleanup:
 brelse(bh);
 up_write(&EXT2_I(inode)->xattr_sem);
}
