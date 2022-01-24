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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {TYPE_1__* s_es; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOMEM ; 
 struct buffer_head* FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_IBITMAP_CORRUPT ; 
 int FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ext4_end_bitmap_read ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 struct ext4_group_desc* FUNC8 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,scalar_t__) ; 
 int FUNC15 (struct super_block*,struct ext4_group_desc*,scalar_t__,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 struct buffer_head* FUNC22 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC31(struct super_block *sb, ext4_group_t block_group)
{
	struct ext4_group_desc *desc;
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct buffer_head *bh = NULL;
	ext4_fsblk_t bitmap_blk;
	int err;

	desc = FUNC8(sb, block_group, NULL);
	if (!desc)
		return FUNC0(-EFSCORRUPTED);

	bitmap_blk = FUNC10(sb, desc);
	if ((bitmap_blk <= FUNC18(sbi->s_es->s_first_data_block)) ||
	    (bitmap_blk >= FUNC6(sbi->s_es))) {
		FUNC7(sb, "Invalid inode bitmap blk %llu in "
			   "block_group %u", bitmap_blk, block_group);
		FUNC13(sb, block_group,
					EXT4_GROUP_INFO_IBITMAP_CORRUPT);
		return FUNC0(-EFSCORRUPTED);
	}
	bh = FUNC22(sb, bitmap_blk);
	if (FUNC28(!bh)) {
		FUNC16(sb, "Cannot read inode bitmap - "
			     "block_group = %u, inode_bitmap = %llu",
			     block_group, bitmap_blk);
		return FUNC0(-ENOMEM);
	}
	if (FUNC3(bh))
		goto verify;

	FUNC19(bh);
	if (FUNC3(bh)) {
		FUNC29(bh);
		goto verify;
	}

	FUNC11(sb, block_group);
	if (FUNC9(sb) &&
	    (desc->bg_flags & FUNC5(EXT4_BG_INODE_UNINIT))) {
		if (block_group == 0) {
			FUNC14(sb, block_group);
			FUNC29(bh);
			FUNC7(sb, "Inode bitmap for bg 0 marked "
				   "uninitialized");
			err = -EFSCORRUPTED;
			goto out;
		}
		FUNC20(bh->b_data, 0, (FUNC1(sb) + 7) / 8);
		FUNC12(FUNC1(sb),
				     sb->s_blocksize * 8, bh->b_data);
		FUNC23(bh);
		FUNC24(bh);
		FUNC25(bh);
		FUNC14(sb, block_group);
		FUNC29(bh);
		return bh;
	}
	FUNC14(sb, block_group);

	if (FUNC4(bh)) {
		/*
		 * if not uninit if bh is uptodate,
		 * bitmap is also uptodate
		 */
		FUNC23(bh);
		FUNC29(bh);
		goto verify;
	}
	/*
	 * submit the buffer_head for reading
	 */
	FUNC27(sb, block_group);
	bh->b_end_io = ext4_end_bitmap_read;
	FUNC17(bh);
	FUNC26(REQ_OP_READ, REQ_META | REQ_PRIO, bh);
	FUNC30(bh);
	if (!FUNC4(bh)) {
		FUNC21(bh);
		FUNC7(sb, "Cannot read inode bitmap - "
			   "block_group = %u, inode_bitmap = %llu",
			   block_group, bitmap_blk);
		FUNC13(sb, block_group,
				EXT4_GROUP_INFO_IBITMAP_CORRUPT);
		return FUNC0(-EIO);
	}

verify:
	err = FUNC15(sb, desc, block_group, bh);
	if (err)
		goto out;
	return bh;
out:
	FUNC21(bh);
	return FUNC0(err);
}