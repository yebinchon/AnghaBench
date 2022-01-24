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
struct inode {int dummy; } ;
struct ext4_super_block {int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_log_groups_per_flex; int s_groups_count; scalar_t__ s_itb_per_group; scalar_t__ s_cluster_ratio; struct ext4_super_block* s_es; } ;
struct ext4_new_flex_group_data {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 unsigned long FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_IGET_SPECIAL ; 
 int FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_RESIZE_INO ; 
 struct ext4_sb_info* FUNC5 (struct super_block*) ; 
 int HZ ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC7 (struct inode*) ; 
 struct ext4_new_flex_group_data* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct super_block*,int) ; 
 scalar_t__ FUNC11 (struct super_block*,struct ext4_new_flex_group_data*,int) ; 
 scalar_t__ FUNC12 (struct ext4_super_block*) ; 
 int FUNC13 (struct super_block*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*) ; 
 int FUNC15 (struct super_block*,struct inode*,struct ext4_new_flex_group_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,scalar_t__,int*,scalar_t__*) ; 
 int FUNC17 (struct super_block*,scalar_t__) ; 
 int FUNC18 (struct super_block*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (struct super_block*,int) ; 
 scalar_t__ FUNC20 (struct super_block*,int) ; 
 int FUNC21 (struct super_block*) ; 
 scalar_t__ FUNC22 (struct super_block*) ; 
 struct inode* FUNC23 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct super_block*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ FUNC26 (struct super_block*,struct ext4_new_flex_group_data*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC28 (struct ext4_new_flex_group_data*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC32 (struct super_block*,int) ; 
 struct buffer_head* FUNC33 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC34 (int) ; 

int FUNC35(struct super_block *sb, ext4_fsblk_t n_blocks_count)
{
	struct ext4_new_flex_group_data *flex_gd = NULL;
	struct ext4_sb_info *sbi = FUNC5(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct buffer_head *bh;
	struct inode *resize_inode = NULL;
	ext4_grpblk_t add, offset;
	unsigned long n_desc_blocks;
	unsigned long o_desc_blocks;
	ext4_group_t o_group;
	ext4_group_t n_group;
	ext4_fsblk_t o_blocks_count;
	ext4_fsblk_t n_blocks_count_retry = 0;
	unsigned long last_update_time = 0;
	int err = 0, flexbg_size = 1 << sbi->s_log_groups_per_flex;
	int meta_bg;

	/* See if the device is actually as big as what was requested */
	bh = FUNC33(sb, n_blocks_count - 1);
	if (!bh) {
		FUNC27(sb, "can't read last block, resize aborted");
		return -ENOSPC;
	}
	FUNC9(bh);

retry:
	o_blocks_count = FUNC12(es);

	FUNC25(sb, KERN_INFO, "resizing filesystem from %llu "
		 "to %llu blocks", o_blocks_count, n_blocks_count);

	if (n_blocks_count < o_blocks_count) {
		/* On-line shrinking not supported */
		FUNC27(sb, "can't shrink FS - resize aborted");
		return -EINVAL;
	}

	if (n_blocks_count == o_blocks_count)
		/* Nothing need to do */
		return 0;

	n_group = FUNC17(sb, n_blocks_count - 1);
	if (n_group >= (0xFFFFFFFFUL / FUNC4(sb))) {
		FUNC27(sb, "resize would cause inodes_count overflow");
		return -EINVAL;
	}
	FUNC16(sb, o_blocks_count - 1, &o_group, &offset);

	n_desc_blocks = FUNC32(sb, n_group + 1);
	o_desc_blocks = FUNC32(sb, sbi->s_groups_count);

	meta_bg = FUNC21(sb);

	if (FUNC22(sb)) {
		if (meta_bg) {
			FUNC14(sb, "resize_inode and meta_bg enabled "
				   "simultaneously");
			return -EINVAL;
		}
		if (n_desc_blocks > o_desc_blocks +
		    FUNC30(es->s_reserved_gdt_blocks)) {
			n_blocks_count_retry = n_blocks_count;
			n_desc_blocks = o_desc_blocks +
				FUNC30(es->s_reserved_gdt_blocks);
			n_group = n_desc_blocks * FUNC3(sb);
			n_blocks_count = (ext4_fsblk_t)n_group *
				FUNC0(sb) +
				FUNC31(es->s_first_data_block);
			n_group--; /* set to last group number */
		}

		if (!resize_inode)
			resize_inode = FUNC23(sb, EXT4_RESIZE_INO,
						 EXT4_IGET_SPECIAL);
		if (FUNC6(resize_inode)) {
			FUNC27(sb, "Error opening resize inode");
			return FUNC7(resize_inode);
		}
	}

	if ((!resize_inode && !meta_bg) || n_blocks_count == o_blocks_count) {
		err = FUNC13(sb, resize_inode);
		if (err)
			goto out;
		if (resize_inode) {
			FUNC29(resize_inode);
			resize_inode = NULL;
		}
		if (n_blocks_count_retry) {
			n_blocks_count = n_blocks_count_retry;
			n_blocks_count_retry = 0;
			goto retry;
		}
	}

	/*
	 * Make sure the last group has enough space so that it's
	 * guaranteed to have enough space for all metadata blocks
	 * that it might need to hold.  (We might not need to store
	 * the inode table blocks in the last block group, but there
	 * will be cases where this might be needed.)
	 */
	if ((FUNC19(sb, n_group) +
	     FUNC20(sb, n_group) + 2 +
	     sbi->s_itb_per_group + sbi->s_cluster_ratio) >= n_blocks_count) {
		n_blocks_count = FUNC19(sb, n_group);
		n_group--;
		n_blocks_count_retry = 0;
		if (resize_inode) {
			FUNC29(resize_inode);
			resize_inode = NULL;
		}
		goto retry;
	}

	/* extend the last group */
	if (n_group == o_group)
		add = n_blocks_count - o_blocks_count;
	else
		add = FUNC1(sbi, FUNC2(sb) - (offset + 1));
	if (add > 0) {
		err = FUNC18(sb, o_blocks_count, add);
		if (err)
			goto out;
	}

	if (FUNC12(es) == n_blocks_count)
		goto out;

	err = FUNC10(sb, n_group + 1);
	if (err)
		goto out;

	err = FUNC24(sb, n_group + 1);
	if (err)
		goto out;

	flex_gd = FUNC8(flexbg_size);
	if (flex_gd == NULL) {
		err = -ENOMEM;
		goto out;
	}

	/* Add flex groups. Note that a regular group is a
	 * flex group with 1 group.
	 */
	while (FUNC26(sb, flex_gd, n_blocks_count,
					      flexbg_size)) {
		if (jiffies - last_update_time > HZ * 10) {
			if (last_update_time)
				FUNC25(sb, KERN_INFO,
					 "resized to %llu blocks",
					 FUNC12(es));
			last_update_time = jiffies;
		}
		if (FUNC11(sb, flex_gd, flexbg_size) != 0)
			break;
		err = FUNC15(sb, resize_inode, flex_gd);
		if (FUNC34(err))
			break;
	}

	if (!err && n_blocks_count_retry) {
		n_blocks_count = n_blocks_count_retry;
		n_blocks_count_retry = 0;
		FUNC28(flex_gd);
		flex_gd = NULL;
		if (resize_inode) {
			FUNC29(resize_inode);
			resize_inode = NULL;
		}
		goto retry;
	}

out:
	if (flex_gd)
		FUNC28(flex_gd);
	if (resize_inode != NULL)
		FUNC29(resize_inode);
	if (err)
		FUNC27(sb, "error (%d) occurred during "
			     "file system resize", err);
	FUNC25(sb, KERN_INFO, "resized filesystem to %llu",
		 FUNC12(es));
	return err;
}