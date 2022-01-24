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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; struct super_block* i_sb; int /*<<< orphan*/  i_mode; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int LLONG_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHIFT_LEFT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,int,scalar_t__) ; 
 int FUNC12 (struct inode*,int,int) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct inode*,int) ; 
 unsigned int FUNC22 (struct inode*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int FUNC29 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

int FUNC33(struct inode *inode, loff_t offset, loff_t len)
{
	struct super_block *sb = inode->i_sb;
	ext4_lblk_t punch_start, punch_stop;
	handle_t *handle;
	unsigned int credits;
	loff_t new_size, ioffset;
	int ret;

	/*
	 * We need to test this early because xfstests assumes that a
	 * collapse range of (0, 1) will return EOPNOTSUPP if the file
	 * system does not support collapse range.
	 */
	if (!FUNC20(inode, EXT4_INODE_EXTENTS))
		return -EOPNOTSUPP;

	/* Collapse range works only on fs block size aligned offsets. */
	if (offset & (FUNC1(sb) - 1) ||
	    len & (FUNC1(sb) - 1))
		return -EINVAL;

	if (!FUNC6(inode->i_mode))
		return -EINVAL;

	FUNC30(inode, offset, len);

	punch_start = offset >> FUNC0(sb);
	punch_stop = (offset + len) >> FUNC0(sb);

	/* Call ext4_force_commit to flush all data in case of data=journal. */
	if (FUNC19(inode)) {
		ret = FUNC14(inode->i_sb);
		if (ret)
			return ret;
	}

	FUNC27(inode);
	/*
	 * There is no need to overlap collapse range with EOF, in which case
	 * it is effectively a truncate operation
	 */
	if (offset + len >= FUNC24(inode)) {
		ret = -EINVAL;
		goto out_mutex;
	}

	/* Currently just for extent based files */
	if (!FUNC20(inode, EXT4_INODE_EXTENTS)) {
		ret = -EOPNOTSUPP;
		goto out_mutex;
	}

	/* Wait for existing dio to complete */
	FUNC26(inode);

	/*
	 * Prevent page faults from reinstantiating pages we have released from
	 * page cache.
	 */
	FUNC8(&FUNC2(inode)->i_mmap_sem);

	ret = FUNC9(inode);
	if (ret)
		goto out_mmap;

	/*
	 * Need to round down offset to be aligned with page size boundary
	 * for page size > block size.
	 */
	ioffset = FUNC29(offset, PAGE_SIZE);
	/*
	 * Write tail of the last page before removed range since it will get
	 * removed from the page cache below.
	 */
	ret = FUNC23(inode->i_mapping, ioffset, offset);
	if (ret)
		goto out_mmap;
	/*
	 * Write data that will be shifted to preserve them when discarding
	 * page cache below. We are also protected from pages becoming dirty
	 * by i_mmap_sem.
	 */
	ret = FUNC23(inode->i_mapping, offset + len,
					   LLONG_MAX);
	if (ret)
		goto out_mmap;
	FUNC31(inode, ioffset);

	credits = FUNC22(inode);
	handle = FUNC16(inode, EXT4_HT_TRUNCATE, credits);
	if (FUNC3(handle)) {
		ret = FUNC5(handle);
		goto out_mmap;
	}

	FUNC8(&FUNC2(inode)->i_data_sem);
	FUNC10(inode);

	ret = FUNC11(inode, punch_start,
				    EXT_MAX_BLOCKS - punch_start);
	if (ret) {
		FUNC32(&FUNC2(inode)->i_data_sem);
		goto out_stop;
	}

	ret = FUNC12(inode, punch_start, punch_stop - 1);
	if (ret) {
		FUNC32(&FUNC2(inode)->i_data_sem);
		goto out_stop;
	}
	FUNC10(inode);

	ret = FUNC13(inode, handle, punch_stop,
				     punch_stop - punch_start, SHIFT_LEFT);
	if (ret) {
		FUNC32(&FUNC2(inode)->i_data_sem);
		goto out_stop;
	}

	new_size = FUNC24(inode) - len;
	FUNC25(inode, new_size);
	FUNC2(inode)->i_disksize = new_size;

	FUNC32(&FUNC2(inode)->i_data_sem);
	if (FUNC4(inode))
		FUNC15(handle);
	inode->i_mtime = inode->i_ctime = FUNC7(inode);
	FUNC18(handle, inode);
	FUNC21(handle, inode, 1);

out_stop:
	FUNC17(handle);
out_mmap:
	FUNC32(&FUNC2(inode)->i_mmap_sem);
out_mutex:
	FUNC28(inode);
	return ret;
}