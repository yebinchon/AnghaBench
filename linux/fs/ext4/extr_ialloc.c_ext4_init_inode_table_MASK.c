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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct ext4_sb_info {int s_itb_per_group; int /*<<< orphan*/  s_inodes_per_block; } ;
struct ext4_group_info {int /*<<< orphan*/  alloc_sem; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT4_BG_INODE_ZEROED ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_HT_MISC ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 struct ext4_sb_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,scalar_t__,int,scalar_t__) ; 
 struct ext4_group_desc* FUNC12 (struct super_block*,scalar_t__,struct buffer_head**) ; 
 struct ext4_group_info* FUNC13 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,scalar_t__,struct ext4_group_desc*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC16 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC17 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC19 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,scalar_t__) ; 
 int FUNC23 (struct super_block*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct super_block*) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

int FUNC27(struct super_block *sb, ext4_group_t group,
				 int barrier)
{
	struct ext4_group_info *grp = FUNC13(sb, group);
	struct ext4_sb_info *sbi = FUNC4(sb);
	struct ext4_group_desc *gdp = NULL;
	struct buffer_head *group_desc_bh;
	handle_t *handle;
	ext4_fsblk_t blk;
	int num, ret = 0, used_blks = 0;

	/* This should not happen, but just to be sure check this */
	if (FUNC24(sb)) {
		ret = 1;
		goto out;
	}

	gdp = FUNC12(sb, group, &group_desc_bh);
	if (!gdp)
		goto out;

	/*
	 * We do not need to lock this, because we are the only one
	 * handling this flag.
	 */
	if (gdp->bg_flags & FUNC8(EXT4_BG_INODE_ZEROED))
		goto out;

	handle = FUNC19(sb, EXT4_HT_MISC, 1);
	if (FUNC5(handle)) {
		ret = FUNC6(handle);
		goto out;
	}

	FUNC9(&grp->alloc_sem);
	/*
	 * If inode bitmap was already initialized there may be some
	 * used inodes so we need to skip blocks with used inodes in
	 * inode table.
	 */
	if (!(gdp->bg_flags & FUNC8(EXT4_BG_INODE_UNINIT)))
		used_blks = FUNC1((FUNC3(sb) -
			    FUNC17(sb, gdp)),
			    sbi->s_inodes_per_block);

	if ((used_blks < 0) || (used_blks > sbi->s_itb_per_group) ||
	    ((group == 0) && ((FUNC3(sb) -
			       FUNC17(sb, gdp)) <
			      FUNC2(sb)))) {
		FUNC11(sb, "Something is wrong with group %u: "
			   "used itable blocks: %d; "
			   "itable unused count: %u",
			   group, used_blks,
			   FUNC17(sb, gdp));
		ret = 1;
		goto err_out;
	}

	blk = FUNC16(sb, gdp) + used_blks;
	num = sbi->s_itb_per_group - used_blks;

	FUNC0(group_desc_bh, "get_write_access");
	ret = FUNC18(handle,
					    group_desc_bh);
	if (ret)
		goto err_out;

	/*
	 * Skip zeroout if the inode table is full. But we set the ZEROED
	 * flag anyway, because obviously, when it is full it does not need
	 * further zeroing.
	 */
	if (FUNC25(num == 0))
		goto skip_zeroout;

	FUNC10("going to zero out inode table in group %d\n",
		   group);
	ret = FUNC23(sb, blk, num, GFP_NOFS);
	if (ret < 0)
		goto err_out;
	if (barrier)
		FUNC7(sb->s_bdev, GFP_NOFS, NULL);

skip_zeroout:
	FUNC21(sb, group);
	gdp->bg_flags |= FUNC8(EXT4_BG_INODE_ZEROED);
	FUNC14(sb, group, gdp);
	FUNC22(sb, group);

	FUNC0(group_desc_bh,
		     "call ext4_handle_dirty_metadata");
	ret = FUNC15(handle, NULL,
					 group_desc_bh);

err_out:
	FUNC26(&grp->alloc_sem);
	FUNC20(handle);
out:
	return ret;
}