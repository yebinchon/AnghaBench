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
struct super_block {scalar_t__ s_maxbytes; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; struct super_block* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  int loff_t ;
typedef  struct ext4_ext_path handle_t ;
typedef  unsigned int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int EXT4_EXT_MARK_UNWRIT1 ; 
 int EXT4_EXT_MARK_UNWRIT2 ; 
 int EXT4_EX_NOCACHE ; 
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ; 
 int EXT4_GET_BLOCKS_PRE_IO ; 
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC3 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC5 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  SHIFT_RIGHT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_ext_path*) ; 
 unsigned int FUNC13 (struct ext4_extent*) ; 
 scalar_t__ FUNC14 (struct ext4_extent*) ; 
 int FUNC15 (struct inode*,struct ext4_ext_path*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct ext4_ext_path* FUNC16 (struct inode*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC19 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct ext4_ext_path*) ; 
 int FUNC21 (struct ext4_ext_path*,struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 int FUNC23 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path**,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ext4_ext_path*,struct inode*,int) ; 
 unsigned int FUNC26 (struct inode*) ; 
 int FUNC27 (struct inode*) ; 
 int FUNC28 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 int /*<<< orphan*/  FUNC33 (struct ext4_ext_path*) ; 
 unsigned int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

int FUNC39(struct inode *inode, loff_t offset, loff_t len)
{
	struct super_block *sb = inode->i_sb;
	handle_t *handle;
	struct ext4_ext_path *path;
	struct ext4_extent *extent;
	ext4_lblk_t offset_lblk, len_lblk, ee_start_lblk = 0;
	unsigned int credits, ee_len;
	int ret = 0, depth, split_flag = 0;
	loff_t ioffset;

	/*
	 * We need to test this early because xfstests assumes that an
	 * insert range of (0, 1) will return EOPNOTSUPP if the file
	 * system does not support insert range.
	 */
	if (!FUNC24(inode, EXT4_INODE_EXTENTS))
		return -EOPNOTSUPP;

	/* Insert range works only on fs block size aligned offsets. */
	if (offset & (FUNC1(sb) - 1) ||
			len & (FUNC1(sb) - 1))
		return -EINVAL;

	if (!FUNC6(inode->i_mode))
		return -EOPNOTSUPP;

	FUNC36(inode, offset, len);

	offset_lblk = offset >> FUNC0(sb);
	len_lblk = len >> FUNC0(sb);

	/* Call ext4_force_commit to flush all data in case of data=journal */
	if (FUNC22(inode)) {
		ret = FUNC17(inode->i_sb);
		if (ret)
			return ret;
	}

	FUNC31(inode);
	/* Currently just for extent based files */
	if (!FUNC24(inode, EXT4_INODE_EXTENTS)) {
		ret = -EOPNOTSUPP;
		goto out_mutex;
	}

	/* Check for wrap through zero */
	if (inode->i_size + len > inode->i_sb->s_maxbytes) {
		ret = -EFBIG;
		goto out_mutex;
	}

	/* Offset should be less than i_size */
	if (offset >= FUNC29(inode)) {
		ret = -EINVAL;
		goto out_mutex;
	}

	/* Wait for existing dio to complete */
	FUNC30(inode);

	/*
	 * Prevent page faults from reinstantiating pages we have released from
	 * page cache.
	 */
	FUNC8(&FUNC2(inode)->i_mmap_sem);

	ret = FUNC9(inode);
	if (ret)
		goto out_mmap;

	/*
	 * Need to round down to align start offset to page size boundary
	 * for page size > block size.
	 */
	ioffset = FUNC35(offset, PAGE_SIZE);
	/* Write out all dirty pages */
	ret = FUNC28(inode->i_mapping, ioffset,
			LLONG_MAX);
	if (ret)
		goto out_mmap;
	FUNC37(inode, ioffset);

	credits = FUNC26(inode);
	handle = FUNC19(inode, EXT4_HT_TRUNCATE, credits);
	if (FUNC3(handle)) {
		ret = FUNC5(handle);
		goto out_mmap;
	}

	/* Expand file to avoid data loss if there is error while shifting */
	inode->i_size += len;
	FUNC2(inode)->i_disksize += len;
	inode->i_mtime = inode->i_ctime = FUNC7(inode);
	ret = FUNC21(handle, inode);
	if (ret)
		goto out_stop;

	FUNC8(&FUNC2(inode)->i_data_sem);
	FUNC10(inode);

	path = FUNC16(inode, offset_lblk, NULL, 0);
	if (FUNC3(path)) {
		FUNC38(&FUNC2(inode)->i_data_sem);
		goto out_stop;
	}

	depth = FUNC27(inode);
	extent = path[depth].p_ext;
	if (extent) {
		ee_start_lblk = FUNC34(extent->ee_block);
		ee_len = FUNC13(extent);

		/*
		 * If offset_lblk is not the starting block of extent, split
		 * the extent @offset_lblk
		 */
		if ((offset_lblk > ee_start_lblk) &&
				(offset_lblk < (ee_start_lblk + ee_len))) {
			if (FUNC14(extent))
				split_flag = EXT4_EXT_MARK_UNWRIT1 |
					EXT4_EXT_MARK_UNWRIT2;
			ret = FUNC23(handle, inode, &path,
					offset_lblk, split_flag,
					EXT4_EX_NOCACHE |
					EXT4_GET_BLOCKS_PRE_IO |
					EXT4_GET_BLOCKS_METADATA_NOFAIL);
		}

		FUNC12(path);
		FUNC33(path);
		if (ret < 0) {
			FUNC38(&FUNC2(inode)->i_data_sem);
			goto out_stop;
		}
	} else {
		FUNC12(path);
		FUNC33(path);
	}

	ret = FUNC11(inode, offset_lblk,
			EXT_MAX_BLOCKS - offset_lblk);
	if (ret) {
		FUNC38(&FUNC2(inode)->i_data_sem);
		goto out_stop;
	}

	/*
	 * if offset_lblk lies in a hole which is at start of file, use
	 * ee_start_lblk to shift extents
	 */
	ret = FUNC15(inode, handle,
		ee_start_lblk > offset_lblk ? ee_start_lblk : offset_lblk,
		len_lblk, SHIFT_RIGHT);

	FUNC38(&FUNC2(inode)->i_data_sem);
	if (FUNC4(inode))
		FUNC18(handle);
	if (ret >= 0)
		FUNC25(handle, inode, 1);

out_stop:
	FUNC20(handle);
out_mmap:
	FUNC38(&FUNC2(inode)->i_mmap_sem);
out_mutex:
	FUNC32(inode);
	return ret;
}