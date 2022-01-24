#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct ext4_iloc {int block_group; int offset; struct buffer_head* bh; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
struct blk_plug {int dummy; } ;
typedef  unsigned int ext4_fsblk_t ;
typedef  unsigned int __u32 ;
struct TYPE_4__ {int s_inodes_per_block; unsigned int s_inode_readahead_blks; TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned int,char*) ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*) ; 
 int EXT4_ROOT_INO ; 
 TYPE_2__* FUNC3 (struct super_block*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC4 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 struct ext4_group_desc* FUNC9 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct super_block*) ; 
 unsigned int FUNC11 (struct super_block*,struct ext4_group_desc*) ; 
 unsigned int FUNC12 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC13 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC20 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC27(struct inode *inode,
				struct ext4_iloc *iloc, int in_mem)
{
	struct ext4_group_desc	*gdp;
	struct buffer_head	*bh;
	struct super_block	*sb = inode->i_sb;
	ext4_fsblk_t		block;
	struct blk_plug		plug;
	int			inodes_per_block, inode_offset;

	iloc->bh = NULL;
	if (inode->i_ino < EXT4_ROOT_INO ||
	    inode->i_ino > FUNC16(FUNC3(sb)->s_es->s_inodes_count))
		return -EFSCORRUPTED;

	iloc->block_group = (inode->i_ino - 1) / FUNC1(sb);
	gdp = FUNC9(sb, iloc->block_group, NULL);
	if (!gdp)
		return -EIO;

	/*
	 * Figure out the offset within the block group inode table
	 */
	inodes_per_block = FUNC3(sb)->s_inodes_per_block;
	inode_offset = ((inode->i_ino - 1) %
			FUNC1(sb));
	block = FUNC12(sb, gdp) + (inode_offset / inodes_per_block);
	iloc->offset = (inode_offset % inodes_per_block) * FUNC2(sb);

	bh = FUNC20(sb, block);
	if (FUNC24(!bh))
		return -ENOMEM;
	if (!FUNC7(bh)) {
		FUNC17(bh);

		/*
		 * If the buffer has the write error flag, we have failed
		 * to write out another inode in the same block.  In this
		 * case, we don't have to read the block because we may
		 * read the old inode data successfully.
		 */
		if (FUNC8(bh) && !FUNC7(bh))
			FUNC21(bh);

		if (FUNC7(bh)) {
			/* someone brought it uptodate while we waited */
			FUNC25(bh);
			goto has_buffer;
		}

		/*
		 * If we have all information of the inode in memory and this
		 * is the only valid inode in the block, we need not read the
		 * block.
		 */
		if (in_mem) {
			struct buffer_head *bitmap_bh;
			int i, start;

			start = inode_offset & ~(inodes_per_block - 1);

			/* Is the inode bitmap in cache? */
			bitmap_bh = FUNC20(sb, FUNC11(sb, gdp));
			if (FUNC24(!bitmap_bh))
				goto make_io;

			/*
			 * If the inode bitmap isn't in cache then the
			 * optimisation may end up performing two reads instead
			 * of one, so skip it.
			 */
			if (!FUNC7(bitmap_bh)) {
				FUNC6(bitmap_bh);
				goto make_io;
			}
			for (i = start; i < start + inodes_per_block; i++) {
				if (i == inode_offset)
					continue;
				if (FUNC14(i, bitmap_bh->b_data))
					break;
			}
			FUNC6(bitmap_bh);
			if (i == start + inodes_per_block) {
				/* all other inodes are free, so skip I/O */
				FUNC18(bh->b_data, 0, bh->b_size);
				FUNC21(bh);
				FUNC25(bh);
				goto has_buffer;
			}
		}

make_io:
		/*
		 * If we need to do any I/O, try to pre-readahead extra
		 * blocks from the inode table.
		 */
		FUNC5(&plug);
		if (FUNC3(sb)->s_inode_readahead_blks) {
			ext4_fsblk_t b, end, table;
			unsigned num;
			__u32 ra_blks = FUNC3(sb)->s_inode_readahead_blks;

			table = FUNC12(sb, gdp);
			/* s_inode_readahead_blks is always a power of 2 */
			b = block & ~((ext4_fsblk_t) ra_blks - 1);
			if (table > b)
				b = table;
			end = b + ra_blks;
			num = FUNC1(sb);
			if (FUNC10(sb))
				num -= FUNC13(sb, gdp);
			table += num / inodes_per_block;
			if (end > table)
				end = table;
			while (b <= end)
				FUNC19(sb, b++);
		}

		/*
		 * There are other valid inodes in the buffer, this inode
		 * has in-inode xattrs, or we don't have this inode in memory.
		 * Read the block from disk.
		 */
		FUNC23(inode);
		FUNC15(bh);
		bh->b_end_io = end_buffer_read_sync;
		FUNC22(REQ_OP_READ, REQ_META | REQ_PRIO, bh);
		FUNC4(&plug);
		FUNC26(bh);
		if (!FUNC7(bh)) {
			FUNC0(inode, block,
					       "unable to read itable block");
			FUNC6(bh);
			return -EIO;
		}
	}
has_buffer:
	iloc->bh = bh;
	return 0;
}