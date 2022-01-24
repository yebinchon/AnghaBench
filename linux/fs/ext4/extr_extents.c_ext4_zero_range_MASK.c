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
struct inode {unsigned int i_blkbits; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 long EINVAL ; 
 int EOPNOTSUPP ; 
 int EXT4_EX_NOCACHE ; 
 int EXT4_GET_BLOCKS_CONVERT_UNWRITTEN ; 
 int EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT ; 
 int EXT4_GET_BLOCKS_KEEP_SIZE ; 
 int /*<<< orphan*/  EXT4_HT_MISC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EOFBLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FALLOC_FL_KEEP_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int O_SYNC ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct file*,unsigned int,unsigned int,int,int) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 struct inode* FUNC22 (struct file*) ; 
 int FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int FUNC26 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 unsigned int FUNC28 (int,int) ; 
 unsigned int FUNC29 (int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC33(struct file *file, loff_t offset,
			    loff_t len, int mode)
{
	struct inode *inode = FUNC22(file);
	handle_t *handle = NULL;
	unsigned int max_blocks;
	loff_t new_size = 0;
	int ret = 0;
	int flags;
	int credits;
	int partial_begin, partial_end;
	loff_t start, end;
	ext4_lblk_t lblk;
	unsigned int blkbits = inode->i_blkbits;

	FUNC30(inode, offset, len, mode);

	if (!FUNC3(inode->i_mode))
		return -EINVAL;

	/* Call ext4_force_commit to flush all data in case of data=journal. */
	if (FUNC15(inode)) {
		ret = FUNC9(inode->i_sb);
		if (ret)
			return ret;
	}

	/*
	 * Round up offset. This is not fallocate, we neet to zero out
	 * blocks, so convert interior block aligned part of the range to
	 * unwritten and possibly manually zero out unaligned parts of the
	 * range.
	 */
	start = FUNC29(offset, 1 << blkbits);
	end = FUNC28((offset + len), 1 << blkbits);

	if (start < offset || end > offset + len)
		return -EINVAL;
	partial_begin = offset & ((1 << blkbits) - 1);
	partial_end = (offset + len) & ((1 << blkbits) - 1);

	lblk = start >> blkbits;
	max_blocks = (end >> blkbits);
	if (max_blocks < lblk)
		max_blocks = 0;
	else
		max_blocks -= lblk;

	FUNC25(inode);

	/*
	 * Indirect files do not support unwritten extnets
	 */
	if (!(FUNC17(inode, EXT4_INODE_EXTENTS))) {
		ret = -EOPNOTSUPP;
		goto out_mutex;
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
	    (offset + len > FUNC23(inode) ||
	     offset + len > FUNC0(inode)->i_disksize)) {
		new_size = offset + len;
		ret = FUNC26(inode, new_size);
		if (ret)
			goto out_mutex;
	}

	flags = EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT;
	if (mode & FALLOC_FL_KEEP_SIZE)
		flags |= EXT4_GET_BLOCKS_KEEP_SIZE;

	/* Wait all existing dio workers, newcomers will block on i_mutex */
	FUNC24(inode);

	/* Preallocate the range including the unaligned edges */
	if (partial_begin || partial_end) {
		ret = FUNC6(file,
				FUNC28(offset, 1 << blkbits) >> blkbits,
				(FUNC29((offset + len), 1 << blkbits) -
				 FUNC28(offset, 1 << blkbits)) >> blkbits,
				new_size, flags);
		if (ret)
			goto out_mutex;

	}

	/* Zero range excluding the unaligned edges */
	if (max_blocks > 0) {
		flags |= (EXT4_GET_BLOCKS_CONVERT_UNWRITTEN |
			  EXT4_EX_NOCACHE);

		/*
		 * Prevent page faults from reinstantiating pages we have
		 * released from page cache.
		 */
		FUNC5(&FUNC0(inode)->i_mmap_sem);

		ret = FUNC7(inode);
		if (ret) {
			FUNC32(&FUNC0(inode)->i_mmap_sem);
			goto out_mutex;
		}

		ret = FUNC18(inode, offset, len);
		if (ret) {
			FUNC32(&FUNC0(inode)->i_mmap_sem);
			goto out_mutex;
		}
		/* Now release the pages and zero block aligned part of pages */
		FUNC31(inode, start, end - 1);
		inode->i_mtime = inode->i_ctime = FUNC4(inode);

		ret = FUNC6(file, lblk, max_blocks, new_size,
					     flags);
		FUNC32(&FUNC0(inode)->i_mmap_sem);
		if (ret)
			goto out_mutex;
	}
	if (!partial_begin && !partial_end)
		goto out_mutex;

	/*
	 * In worst case we have to writeout two nonadjacent unwritten
	 * blocks and update the inode
	 */
	credits = (2 * FUNC8(inode, 2)) + 1;
	if (FUNC15(inode))
		credits += 2;
	handle = FUNC11(inode, EXT4_HT_MISC, credits);
	if (FUNC1(handle)) {
		ret = FUNC2(handle);
		FUNC16(inode->i_sb, ret);
		goto out_mutex;
	}

	inode->i_mtime = inode->i_ctime = FUNC4(inode);
	if (new_size) {
		FUNC20(inode, new_size);
	} else {
		/*
		* Mark that we allocate beyond EOF so the subsequent truncate
		* can proceed even if the new size is the same as i_size.
		*/
		if ((offset + len) > FUNC23(inode))
			FUNC14(inode, EXT4_INODE_EOFBLOCKS);
	}
	FUNC13(handle, inode);

	/* Zero out partial block at the edges of the range */
	ret = FUNC21(handle, inode, offset, len);
	if (ret >= 0)
		FUNC19(handle, inode, 1);

	if (file->f_flags & O_SYNC)
		FUNC10(handle);

	FUNC12(handle);
out_mutex:
	FUNC27(inode);
	return ret;
}