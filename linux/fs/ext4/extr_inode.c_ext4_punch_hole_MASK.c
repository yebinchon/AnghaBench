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
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int PAGE_SIZE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*,int,int) ; 
 int FUNC14 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int FUNC18 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC19 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int) ; 
 scalar_t__ FUNC23 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct inode*,int) ; 
 unsigned int FUNC26 (struct inode*) ; 
 int FUNC27 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int FUNC28 (struct address_space*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*) ; 
 scalar_t__ FUNC32 (struct address_space*,int /*<<< orphan*/ ) ; 
 int FUNC33 (int,int) ; 
 int FUNC34 (int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 

int FUNC38(struct inode *inode, loff_t offset, loff_t length)
{
	struct super_block *sb = inode->i_sb;
	ext4_lblk_t first_block, stop_block;
	struct address_space *mapping = inode->i_mapping;
	loff_t first_block_offset, last_block_offset;
	handle_t *handle;
	unsigned int credits;
	int ret = 0;

	if (!FUNC5(inode->i_mode))
		return -EOPNOTSUPP;

	FUNC35(inode, offset, length, 0);

	FUNC10(inode, EXT4_STATE_MAY_INLINE_DATA);
	if (FUNC16(inode)) {
		FUNC7(&FUNC1(inode)->i_mmap_sem);
		ret = FUNC11(inode);
		FUNC37(&FUNC1(inode)->i_mmap_sem);
		if (ret)
			return ret;
	}

	/*
	 * Write out all dirty pages to avoid race conditions
	 * Then release them.
	 */
	if (FUNC32(mapping, PAGECACHE_TAG_DIRTY)) {
		ret = FUNC28(mapping, offset,
						   offset + length - 1);
		if (ret)
			return ret;
	}

	FUNC30(inode);

	/* No need to punch hole beyond i_size */
	if (offset >= inode->i_size)
		goto out_mutex;

	/*
	 * If the hole extends beyond i_size, set the hole
	 * to end after the page that contains i_size
	 */
	if (offset + length > inode->i_size) {
		length = inode->i_size +
		   PAGE_SIZE - (inode->i_size & (PAGE_SIZE - 1)) -
		   offset;
	}

	if (offset & (sb->s_blocksize - 1) ||
	    (offset + length) & (sb->s_blocksize - 1)) {
		/*
		 * Attach jinode to inode for jbd2 if we do any zeroing of
		 * partial block
		 */
		ret = FUNC18(inode);
		if (ret < 0)
			goto out_mutex;

	}

	/* Wait all existing dio workers, newcomers will block on i_mutex */
	FUNC29(inode);

	/*
	 * Prevent page faults from reinstantiating pages we have released from
	 * page cache.
	 */
	FUNC7(&FUNC1(inode)->i_mmap_sem);

	ret = FUNC9(inode);
	if (ret)
		goto out_dio;

	first_block_offset = FUNC34(offset, sb->s_blocksize);
	last_block_offset = FUNC33((offset + length), sb->s_blocksize) - 1;

	/* Now release the pages and zero block aligned part of pages*/
	if (last_block_offset > first_block_offset) {
		ret = FUNC24(inode, offset, length);
		if (ret)
			goto out_dio;
		FUNC36(inode, first_block_offset,
					 last_block_offset);
	}

	if (FUNC23(inode, EXT4_INODE_EXTENTS))
		credits = FUNC26(inode);
	else
		credits = FUNC8(inode);
	handle = FUNC19(inode, EXT4_HT_TRUNCATE, credits);
	if (FUNC2(handle)) {
		ret = FUNC4(handle);
		FUNC22(sb, ret);
		goto out_dio;
	}

	ret = FUNC27(handle, inode, offset,
				       length);
	if (ret)
		goto out_stop;

	first_block = (offset + sb->s_blocksize - 1) >>
		FUNC0(sb);
	stop_block = (offset + length) >> FUNC0(sb);

	/* If there are blocks to remove, do it */
	if (stop_block > first_block) {

		FUNC7(&FUNC1(inode)->i_data_sem);
		FUNC12(inode);

		ret = FUNC13(inode, first_block,
					    stop_block - first_block);
		if (ret) {
			FUNC37(&FUNC1(inode)->i_data_sem);
			goto out_stop;
		}

		if (FUNC23(inode, EXT4_INODE_EXTENTS))
			ret = FUNC14(inode, first_block,
						    stop_block - 1);
		else
			ret = FUNC17(handle, inode, first_block,
						    stop_block);

		FUNC37(&FUNC1(inode)->i_data_sem);
	}
	if (FUNC3(inode))
		FUNC15(handle);

	inode->i_mtime = inode->i_ctime = FUNC6(inode);
	FUNC21(handle, inode);
	if (ret >= 0)
		FUNC25(handle, inode, 1);
out_stop:
	FUNC20(handle);
out_dio:
	FUNC37(&FUNC1(inode)->i_mmap_sem);
out_mutex:
	FUNC31(inode);
	return ret;
}