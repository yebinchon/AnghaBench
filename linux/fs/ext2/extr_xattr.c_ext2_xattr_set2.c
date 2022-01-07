
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct mb_cache {int dummy; } ;
struct inode {int i_ctime; struct super_block* i_sb; } ;
struct ext2_xattr_header {scalar_t__ h_refcount; scalar_t__ h_hash; } ;
struct buffer_head {int b_blocknr; int b_size; int b_data; } ;
typedef int ext2_fsblk_t ;
typedef int __u32 ;
struct TYPE_2__ {int i_file_acl; int i_block_group; } ;


 struct mb_cache* EA_BLOCK_CACHE (struct inode*) ;
 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 TYPE_1__* EXT2_I (struct inode*) ;
 struct ext2_xattr_header* HDR (struct buffer_head*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_req (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int current_time (struct inode*) ;
 int dquot_alloc_block (struct inode*,int) ;
 int dquot_free_block_nodirty (struct inode*,int) ;
 int ea_bdebug (struct buffer_head*,char*,...) ;
 int ea_idebug (struct inode*,char*,int) ;
 int ext2_free_blocks (struct inode*,int,int) ;
 int ext2_group_first_block_no (struct super_block*,int ) ;
 int ext2_new_block (struct inode*,int ,int*) ;
 struct buffer_head* ext2_xattr_cache_find (struct inode*,struct ext2_xattr_header*) ;
 int ext2_xattr_cache_insert (struct mb_cache*,struct buffer_head*) ;
 int ext2_xattr_update_super_block (struct super_block*) ;
 int get_bh (struct buffer_head*) ;
 int le32_add_cpu (scalar_t__*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int mb_cache_entry_delete (struct mb_cache*,int ,int) ;
 int memcpy (int ,struct ext2_xattr_header*,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int sync_inode_metadata (struct inode*,int) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int
ext2_xattr_set2(struct inode *inode, struct buffer_head *old_bh,
  struct ext2_xattr_header *header)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *new_bh = ((void*)0);
 int error;
 struct mb_cache *ea_block_cache = EA_BLOCK_CACHE(inode);

 if (header) {
  new_bh = ext2_xattr_cache_find(inode, header);
  if (new_bh) {

   if (new_bh == old_bh) {
    ea_bdebug(new_bh, "keeping this block");
   } else {


    ea_bdebug(new_bh, "reusing block");

    error = dquot_alloc_block(inode, 1);
    if (error) {
     unlock_buffer(new_bh);
     goto cleanup;
    }
    le32_add_cpu(&HDR(new_bh)->h_refcount, 1);
    ea_bdebug(new_bh, "refcount now=%d",
     le32_to_cpu(HDR(new_bh)->h_refcount));
   }
   unlock_buffer(new_bh);
  } else if (old_bh && header == HDR(old_bh)) {


   new_bh = old_bh;
   get_bh(new_bh);
   ext2_xattr_cache_insert(ea_block_cache, new_bh);
  } else {

   ext2_fsblk_t goal = ext2_group_first_block_no(sb,
      EXT2_I(inode)->i_block_group);
   int block = ext2_new_block(inode, goal, &error);
   if (error)
    goto cleanup;
   ea_idebug(inode, "creating block %d", block);

   new_bh = sb_getblk(sb, block);
   if (unlikely(!new_bh)) {
    ext2_free_blocks(inode, block, 1);
    mark_inode_dirty(inode);
    error = -ENOMEM;
    goto cleanup;
   }
   lock_buffer(new_bh);
   memcpy(new_bh->b_data, header, new_bh->b_size);
   set_buffer_uptodate(new_bh);
   unlock_buffer(new_bh);
   ext2_xattr_cache_insert(ea_block_cache, new_bh);

   ext2_xattr_update_super_block(sb);
  }
  mark_buffer_dirty(new_bh);
  if (IS_SYNC(inode)) {
   sync_dirty_buffer(new_bh);
   error = -EIO;
   if (buffer_req(new_bh) && !buffer_uptodate(new_bh))
    goto cleanup;
  }
 }


 EXT2_I(inode)->i_file_acl = new_bh ? new_bh->b_blocknr : 0;
 inode->i_ctime = current_time(inode);
 if (IS_SYNC(inode)) {
  error = sync_inode_metadata(inode, 1);



  if (error && error != -ENOSPC) {
   if (new_bh && new_bh != old_bh) {
    dquot_free_block_nodirty(inode, 1);
    mark_inode_dirty(inode);
   }
   goto cleanup;
  }
 } else
  mark_inode_dirty(inode);

 error = 0;
 if (old_bh && old_bh != new_bh) {




  lock_buffer(old_bh);
  if (HDR(old_bh)->h_refcount == cpu_to_le32(1)) {
   __u32 hash = le32_to_cpu(HDR(old_bh)->h_hash);





   mb_cache_entry_delete(ea_block_cache, hash,
           old_bh->b_blocknr);

   ea_bdebug(old_bh, "freeing");
   ext2_free_blocks(inode, old_bh->b_blocknr, 1);
   mark_inode_dirty(inode);


   get_bh(old_bh);
   bforget(old_bh);
  } else {

   le32_add_cpu(&HDR(old_bh)->h_refcount, -1);
   dquot_free_block_nodirty(inode, 1);
   mark_inode_dirty(inode);
   mark_buffer_dirty(old_bh);
   ea_bdebug(old_bh, "refcount now=%d",
    le32_to_cpu(HDR(old_bh)->h_refcount));
  }
  unlock_buffer(old_bh);
 }

cleanup:
 brelse(new_bh);

 return error;
}
