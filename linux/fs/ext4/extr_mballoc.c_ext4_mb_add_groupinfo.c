
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {struct ext4_group_info*** s_group_info; } ;
struct ext4_group_info {int bb_largest_free_order; int * bb_bitmap; int bb_free_root; int alloc_sem; int bb_prealloc_list; int bb_free; int bb_state; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int b_data; } ;
typedef size_t ext4_group_t ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int EXT4_BG_BLOCK_UNINIT ;
 size_t EXT4_DESC_PER_BLOCK (struct super_block*) ;
 size_t EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;
 int EXT4_GROUP_INFO_NEED_INIT_BIT ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR_OR_NULL (struct buffer_head*) ;
 int KERN_ERR ;
 int RB_ROOT ;
 int cpu_to_le16 (int ) ;
 int ext4_free_clusters_after_init (struct super_block*,size_t,struct ext4_group_desc*) ;
 int ext4_free_group_clusters (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_has_group_desc_csum (struct super_block*) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 struct buffer_head* ext4_read_block_bitmap (struct super_block*,size_t) ;
 struct kmem_cache* get_groupinfo_cache (int ) ;
 int init_rwsem (int *) ;
 int kfree (struct ext4_group_info**) ;
 void* kmalloc (int,int ) ;
 struct ext4_group_info* kmem_cache_zalloc (struct kmem_cache*,int ) ;
 int memcpy (int *,int ,int) ;
 int put_bh (struct buffer_head*) ;
 int set_bit (int ,int *) ;

int ext4_mb_add_groupinfo(struct super_block *sb, ext4_group_t group,
     struct ext4_group_desc *desc)
{
 int i;
 int metalen = 0;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_group_info **meta_group_info;
 struct kmem_cache *cachep = get_groupinfo_cache(sb->s_blocksize_bits);






 if (group % EXT4_DESC_PER_BLOCK(sb) == 0) {
  metalen = sizeof(*meta_group_info) <<
   EXT4_DESC_PER_BLOCK_BITS(sb);
  meta_group_info = kmalloc(metalen, GFP_NOFS);
  if (meta_group_info == ((void*)0)) {
   ext4_msg(sb, KERN_ERR, "can't allocate mem "
     "for a buddy group");
   goto exit_meta_group_info;
  }
  sbi->s_group_info[group >> EXT4_DESC_PER_BLOCK_BITS(sb)] =
   meta_group_info;
 }

 meta_group_info =
  sbi->s_group_info[group >> EXT4_DESC_PER_BLOCK_BITS(sb)];
 i = group & (EXT4_DESC_PER_BLOCK(sb) - 1);

 meta_group_info[i] = kmem_cache_zalloc(cachep, GFP_NOFS);
 if (meta_group_info[i] == ((void*)0)) {
  ext4_msg(sb, KERN_ERR, "can't allocate buddy mem");
  goto exit_group_info;
 }
 set_bit(EXT4_GROUP_INFO_NEED_INIT_BIT,
  &(meta_group_info[i]->bb_state));





 if (ext4_has_group_desc_csum(sb) &&
     (desc->bg_flags & cpu_to_le16(EXT4_BG_BLOCK_UNINIT))) {
  meta_group_info[i]->bb_free =
   ext4_free_clusters_after_init(sb, group, desc);
 } else {
  meta_group_info[i]->bb_free =
   ext4_free_group_clusters(sb, desc);
 }

 INIT_LIST_HEAD(&meta_group_info[i]->bb_prealloc_list);
 init_rwsem(&meta_group_info[i]->alloc_sem);
 meta_group_info[i]->bb_free_root = RB_ROOT;
 meta_group_info[i]->bb_largest_free_order = -1;
 return 0;

exit_group_info:

 if (group % EXT4_DESC_PER_BLOCK(sb) == 0) {
  kfree(sbi->s_group_info[group >> EXT4_DESC_PER_BLOCK_BITS(sb)]);
  sbi->s_group_info[group >> EXT4_DESC_PER_BLOCK_BITS(sb)] = ((void*)0);
 }
exit_meta_group_info:
 return -ENOMEM;
}
