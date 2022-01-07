
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct inode {int i_ino; } ;
struct ext4_sb_info {int* s_mb_maxs; } ;
struct ext4_buddy {TYPE_1__* bd_info; int bd_group; int bd_bitmap; struct super_block* bd_sb; } ;
typedef int ext4_fsblk_t ;
struct TYPE_3__ {int bb_free; int bb_first_free; int* bb_counters; int bb_fragments; } ;


 int BUG_ON (int) ;
 scalar_t__ EXT4_C2B (struct ext4_sb_info*,int) ;
 int EXT4_GROUP_INFO_BBITMAP_CORRUPT ;
 int EXT4_MB_GRP_BBITMAP_CORRUPT (TYPE_1__*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 scalar_t__ WARN_ON (int) ;
 int assert_spin_locked (int ) ;
 int ext4_group_first_block_no (struct super_block*,int ) ;
 int ext4_group_lock_ptr (struct super_block*,int ) ;
 int ext4_grp_locked_error (struct super_block*,int ,int ,int ,char*,int) ;
 int ext4_mark_group_bitmap_corrupted (struct super_block*,int ,int ) ;
 int mb_buddy_mark_free (struct ext4_buddy*,int,int) ;
 int mb_check_buddy (struct ext4_buddy*) ;
 int mb_free_blocks_double (struct inode*,struct ext4_buddy*,int,int) ;
 int mb_regenerate_buddy (struct ext4_buddy*) ;
 int mb_set_largest_free_order (struct super_block*,TYPE_1__*) ;
 int mb_test_and_clear_bits (int ,int,int) ;
 int mb_test_bit (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mb_free_blocks(struct inode *inode, struct ext4_buddy *e4b,
      int first, int count)
{
 int left_is_free = 0;
 int right_is_free = 0;
 int block;
 int last = first + count - 1;
 struct super_block *sb = e4b->bd_sb;

 if (WARN_ON(count == 0))
  return;
 BUG_ON(last >= (sb->s_blocksize << 3));
 assert_spin_locked(ext4_group_lock_ptr(sb, e4b->bd_group));

 if (unlikely(EXT4_MB_GRP_BBITMAP_CORRUPT(e4b->bd_info)))
  return;

 mb_check_buddy(e4b);
 mb_free_blocks_double(inode, e4b, first, count);

 e4b->bd_info->bb_free += count;
 if (first < e4b->bd_info->bb_first_free)
  e4b->bd_info->bb_first_free = first;




 if (first != 0)
  left_is_free = !mb_test_bit(first - 1, e4b->bd_bitmap);
 block = mb_test_and_clear_bits(e4b->bd_bitmap, first, count);
 if (last + 1 < EXT4_SB(sb)->s_mb_maxs[0])
  right_is_free = !mb_test_bit(last + 1, e4b->bd_bitmap);

 if (unlikely(block != -1)) {
  struct ext4_sb_info *sbi = EXT4_SB(sb);
  ext4_fsblk_t blocknr;

  blocknr = ext4_group_first_block_no(sb, e4b->bd_group);
  blocknr += EXT4_C2B(sbi, block);
  ext4_grp_locked_error(sb, e4b->bd_group,
          inode ? inode->i_ino : 0,
          blocknr,
          "freeing already freed block "
          "(bit %u); block bitmap corrupt.",
          block);
  ext4_mark_group_bitmap_corrupted(sb, e4b->bd_group,
    EXT4_GROUP_INFO_BBITMAP_CORRUPT);
  mb_regenerate_buddy(e4b);
  goto done;
 }


 if (left_is_free && right_is_free)
  e4b->bd_info->bb_fragments--;
 else if (!left_is_free && !right_is_free)
  e4b->bd_info->bb_fragments++;







 if (first & 1) {
  first += !left_is_free;
  e4b->bd_info->bb_counters[0] += left_is_free ? -1 : 1;
 }
 if (!(last & 1)) {
  last -= !right_is_free;
  e4b->bd_info->bb_counters[0] += right_is_free ? -1 : 1;
 }

 if (first <= last)
  mb_buddy_mark_free(e4b, first >> 1, last >> 1);

done:
 mb_set_largest_free_order(sb, e4b->bd_info);
 mb_check_buddy(e4b);
}
