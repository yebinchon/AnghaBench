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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {scalar_t__ s_itb_per_group; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {unsigned int b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 unsigned int FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 int EXT4_GROUP_INFO_BBITMAP_CORRUPT ; 
 int EXT4_GROUP_INFO_IBITMAP_CORRUPT ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC5 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 scalar_t__ FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC9 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct super_block *sb,
				   struct buffer_head *bh,
				   ext4_group_t block_group,
				   struct ext4_group_desc *gdp)
{
	unsigned int bit, bit_max;
	struct ext4_sb_info *sbi = FUNC1(sb);
	ext4_fsblk_t start, tmp;

	FUNC2(bh, FUNC3(bh));

	/* If checksum is bad mark all blocks used to prevent allocation
	 * essentially implementing a per-group read-only flag. */
	if (!FUNC6(sb, block_group, gdp)) {
		FUNC11(sb, block_group,
					EXT4_GROUP_INFO_BBITMAP_CORRUPT |
					EXT4_GROUP_INFO_IBITMAP_CORRUPT);
		return -EFSBADCRC;
	}
	FUNC14(bh->b_data, 0, sb->s_blocksize);

	bit_max = FUNC12(sb, block_group);
	if ((bit_max >> 3) >= bh->b_size)
		return -EFSCORRUPTED;

	for (bit = 0; bit < bit_max; bit++)
		FUNC13(bit, bh->b_data);

	start = FUNC7(sb, block_group);

	/* Set bits for block and inode bitmaps, and inode table */
	tmp = FUNC4(sb, gdp);
	if (FUNC5(sb, tmp, block_group))
		FUNC13(FUNC0(sbi, tmp - start), bh->b_data);

	tmp = FUNC8(sb, gdp);
	if (FUNC5(sb, tmp, block_group))
		FUNC13(FUNC0(sbi, tmp - start), bh->b_data);

	tmp = FUNC9(sb, gdp);
	for (; tmp < FUNC9(sb, gdp) +
		     sbi->s_itb_per_group; tmp++) {
		if (FUNC5(sb, tmp, block_group))
			FUNC13(FUNC0(sbi, tmp - start), bh->b_data);
	}

	/*
	 * Also if the number of blocks within the group is less than
	 * the blocksize * 8 ( which is the size of bitmap ), set rest
	 * of the block bitmap to 1
	 */
	FUNC10(FUNC15(sb, block_group),
			     sb->s_blocksize * 8, bh->b_data);
	return 0;
}