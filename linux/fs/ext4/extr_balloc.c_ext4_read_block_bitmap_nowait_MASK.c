#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_sb_info {TYPE_1__* s_es; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 struct buffer_head* FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_BBITMAP_CORRUPT ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ext4_end_bitmap_read ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 struct ext4_group_desc* FUNC8 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int FUNC10 (struct super_block*,struct buffer_head*,scalar_t__,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,scalar_t__) ; 
 int FUNC14 (struct super_block*,struct ext4_group_desc*,scalar_t__,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 struct buffer_head* FUNC20 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 

struct buffer_head *
FUNC29(struct super_block *sb, ext4_group_t block_group)
{
	struct ext4_group_desc *desc;
	struct ext4_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bh;
	ext4_fsblk_t bitmap_blk;
	int err;

	desc = FUNC8(sb, block_group, NULL);
	if (!desc)
		return FUNC0(-EFSCORRUPTED);
	bitmap_blk = FUNC5(sb, desc);
	if ((bitmap_blk <= FUNC17(sbi->s_es->s_first_data_block)) ||
	    (bitmap_blk >= FUNC6(sbi->s_es))) {
		FUNC7(sb, "Invalid block bitmap block %llu in "
			   "block_group %u", bitmap_blk, block_group);
		FUNC12(sb, block_group,
					EXT4_GROUP_INFO_BBITMAP_CORRUPT);
		return FUNC0(-EFSCORRUPTED);
	}
	bh = FUNC20(sb, bitmap_blk);
	if (FUNC27(!bh)) {
		FUNC15(sb, "Cannot get buffer for block bitmap - "
			     "block_group = %u, block_bitmap = %llu",
			     block_group, bitmap_blk);
		return FUNC0(-ENOMEM);
	}

	if (FUNC2(bh))
		goto verify;

	FUNC18(bh);
	if (FUNC2(bh)) {
		FUNC28(bh);
		goto verify;
	}
	FUNC11(sb, block_group);
	if (FUNC9(sb) &&
	    (desc->bg_flags & FUNC4(EXT4_BG_BLOCK_UNINIT))) {
		if (block_group == 0) {
			FUNC13(sb, block_group);
			FUNC28(bh);
			FUNC7(sb, "Block bitmap for bg 0 marked "
				   "uninitialized");
			err = -EFSCORRUPTED;
			goto out;
		}
		err = FUNC10(sb, bh, block_group, desc);
		FUNC21(bh);
		FUNC23(bh);
		FUNC24(bh);
		FUNC13(sb, block_group);
		FUNC28(bh);
		if (err) {
			FUNC7(sb, "Failed to init block bitmap for group "
				   "%u: %d", block_group, err);
			goto out;
		}
		goto verify;
	}
	FUNC13(sb, block_group);
	if (FUNC3(bh)) {
		/*
		 * if not uninit if bh is uptodate,
		 * bitmap is also uptodate
		 */
		FUNC21(bh);
		FUNC28(bh);
		goto verify;
	}
	/*
	 * submit the buffer_head for reading
	 */
	FUNC22(bh);
	FUNC26(sb, block_group);
	bh->b_end_io = ext4_end_bitmap_read;
	FUNC16(bh);
	FUNC25(REQ_OP_READ, REQ_META | REQ_PRIO, bh);
	return bh;
verify:
	err = FUNC14(sb, desc, block_group, bh);
	if (err)
		goto out;
	return bh;
out:
	FUNC19(bh);
	return FUNC0(err);
}