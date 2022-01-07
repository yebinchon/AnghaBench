
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_super_block {int s_first_data_block; } ;
struct ext4_extent_header {scalar_t__ eh_depth; void* eh_max; void* eh_entries; int eh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_13__ {int i_data; } ;
struct TYPE_12__ {struct ext4_super_block* s_es; } ;
struct TYPE_11__ {int ee_block; } ;
struct TYPE_10__ {int ei_block; } ;
struct TYPE_9__ {scalar_t__ s_blocksize; } ;


 int ENOMEM ;
 int EXT4_EXT_MAGIC ;
 TYPE_8__* EXT4_I (struct inode*) ;
 unsigned int EXT4_MB_HINT_TRY_GOAL ;
 TYPE_6__* EXT4_SB (TYPE_1__*) ;
 TYPE_5__* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 TYPE_2__* EXT_FIRST_INDEX (struct ext4_extent_header*) ;
 int GFP_NOFS ;
 int __GFP_MOVABLE ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int) ;
 int ext4_ext_space_block (struct inode*,int ) ;
 int ext4_ext_space_block_idx (struct inode*,int ) ;
 int ext4_ext_space_root_idx (struct inode*,int ) ;
 int ext4_extent_block_csum_set (struct inode*,struct ext4_extent_header*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_idx_pblock (TYPE_2__*) ;
 int ext4_idx_store_pblock (TYPE_2__*,scalar_t__) ;
 scalar_t__ ext4_inode_to_goal_block (struct inode*) ;
 int ext4_journal_get_create_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_new_meta_blocks (int *,struct inode*,scalar_t__,unsigned int,int *,int*) ;
 struct ext4_extent_header* ext_block_hdr (struct buffer_head*) ;
 int ext_debug (char*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ext_depth (struct inode*) ;
 struct ext4_extent_header* ext_inode_hdr (struct inode*) ;
 int le16_add_cpu (scalar_t__*,int) ;
 int le16_to_cpu (void*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int memmove (scalar_t__,int ,size_t) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 struct buffer_head* sb_getblk_gfp (TYPE_1__*,scalar_t__,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext4_ext_grow_indepth(handle_t *handle, struct inode *inode,
     unsigned int flags)
{
 struct ext4_extent_header *neh;
 struct buffer_head *bh;
 ext4_fsblk_t newblock, goal = 0;
 struct ext4_super_block *es = EXT4_SB(inode->i_sb)->s_es;
 int err = 0;
 size_t ext_size = 0;


 if (ext_depth(inode))
  goal = ext4_idx_pblock(EXT_FIRST_INDEX(ext_inode_hdr(inode)));
 if (goal > le32_to_cpu(es->s_first_data_block)) {
  flags |= EXT4_MB_HINT_TRY_GOAL;
  goal--;
 } else
  goal = ext4_inode_to_goal_block(inode);
 newblock = ext4_new_meta_blocks(handle, inode, goal, flags,
     ((void*)0), &err);
 if (newblock == 0)
  return err;

 bh = sb_getblk_gfp(inode->i_sb, newblock, __GFP_MOVABLE | GFP_NOFS);
 if (unlikely(!bh))
  return -ENOMEM;
 lock_buffer(bh);

 err = ext4_journal_get_create_access(handle, bh);
 if (err) {
  unlock_buffer(bh);
  goto out;
 }

 ext_size = sizeof(EXT4_I(inode)->i_data);

 memmove(bh->b_data, EXT4_I(inode)->i_data, ext_size);

 memset(bh->b_data + ext_size, 0, inode->i_sb->s_blocksize - ext_size);


 neh = ext_block_hdr(bh);


 if (ext_depth(inode))
  neh->eh_max = cpu_to_le16(ext4_ext_space_block_idx(inode, 0));
 else
  neh->eh_max = cpu_to_le16(ext4_ext_space_block(inode, 0));
 neh->eh_magic = EXT4_EXT_MAGIC;
 ext4_extent_block_csum_set(inode, neh);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);

 err = ext4_handle_dirty_metadata(handle, inode, bh);
 if (err)
  goto out;


 neh = ext_inode_hdr(inode);
 neh->eh_entries = cpu_to_le16(1);
 ext4_idx_store_pblock(EXT_FIRST_INDEX(neh), newblock);
 if (neh->eh_depth == 0) {

  neh->eh_max = cpu_to_le16(ext4_ext_space_root_idx(inode, 0));
  EXT_FIRST_INDEX(neh)->ei_block =
   EXT_FIRST_EXTENT(neh)->ee_block;
 }
 ext_debug("new root: num %d(%d), lblock %d, ptr %llu\n",
    le16_to_cpu(neh->eh_entries), le16_to_cpu(neh->eh_max),
    le32_to_cpu(EXT_FIRST_INDEX(neh)->ei_block),
    ext4_idx_pblock(EXT_FIRST_INDEX(neh)));

 le16_add_cpu(&neh->eh_depth, 1);
 ext4_mark_inode_dirty(handle, inode);
out:
 brelse(bh);

 return err;
}
