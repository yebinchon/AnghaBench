#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_sb_info {scalar_t__ s_itb_per_group; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_fsblk_t FUNC10(struct super_block *sb,
					    struct ext4_group_desc *desc,
					    ext4_group_t block_group,
					    struct buffer_head *bh)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	ext4_grpblk_t offset;
	ext4_grpblk_t next_zero_bit;
	ext4_grpblk_t max_bit = FUNC1(sb);
	ext4_fsblk_t blk;
	ext4_fsblk_t group_first_block;

	if (FUNC6(sb)) {
		/* with FLEX_BG, the inode/block bitmaps and itable
		 * blocks may not be in the group at all
		 * so the bitmap validation will be skipped for those groups
		 * or it has to also read the block group where the bitmaps
		 * are located to verify they are set.
		 */
		return 0;
	}
	group_first_block = FUNC5(sb, block_group);

	/* check whether block bitmap block number is set */
	blk = FUNC3(sb, desc);
	offset = blk - group_first_block;
	if (offset < 0 || FUNC0(sbi, offset) >= max_bit ||
	    !FUNC9(FUNC0(sbi, offset), bh->b_data))
		/* bad block bitmap */
		return blk;

	/* check whether the inode bitmap block number is set */
	blk = FUNC7(sb, desc);
	offset = blk - group_first_block;
	if (offset < 0 || FUNC0(sbi, offset) >= max_bit ||
	    !FUNC9(FUNC0(sbi, offset), bh->b_data))
		/* bad block bitmap */
		return blk;

	/* check whether the inode table block number is set */
	blk = FUNC8(sb, desc);
	offset = blk - group_first_block;
	if (offset < 0 || FUNC0(sbi, offset) >= max_bit ||
	    FUNC0(sbi, offset + sbi->s_itb_per_group) >= max_bit)
		return blk;
	next_zero_bit = FUNC4(bh->b_data,
			FUNC0(sbi, offset + sbi->s_itb_per_group),
			FUNC0(sbi, offset));
	if (next_zero_bit <
	    FUNC0(sbi, offset + sbi->s_itb_per_group))
		/* bad bitmap for inode tables */
		return blk;
	return 0;
}