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
struct inode {unsigned int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct file {int f_flags; } ;
typedef  unsigned int loff_t ;
typedef  unsigned int ext4_lblk_t ;
struct TYPE_4__ {unsigned int i_disksize; int /*<<< orphan*/  i_sync_tid; } ;
struct TYPE_3__ {scalar_t__ s_journal; } ;

/* Variables and functions */
 long EOPNOTSUPP ; 
 int EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT ; 
 int EXT4_GET_BLOCKS_KEEP_SIZE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 unsigned int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FALLOC_FL_COLLAPSE_RANGE ; 
 int FALLOC_FL_INSERT_RANGE ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int FALLOC_FL_ZERO_RANGE ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int O_SYNC ; 
 int FUNC4 (struct file*,unsigned int,unsigned int,unsigned int,int) ; 
 long FUNC5 (struct inode*,unsigned int,unsigned int) ; 
 int FUNC6 (struct inode*) ; 
 long FUNC7 (struct inode*,unsigned int,unsigned int) ; 
 long FUNC8 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 long FUNC10 (struct file*,unsigned int,unsigned int,int) ; 
 struct inode* FUNC11 (struct file*) ; 
 unsigned int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,unsigned int,unsigned int,int) ; 

long FUNC20(struct file *file, int mode, loff_t offset, loff_t len)
{
	struct inode *inode = FUNC11(file);
	loff_t new_size = 0;
	unsigned int max_blocks;
	int ret = 0;
	int flags;
	ext4_lblk_t lblk;
	unsigned int blkbits = inode->i_blkbits;

	/*
	 * Encrypted inodes can't handle collapse range or insert
	 * range since we would need to re-encrypt blocks with a
	 * different IV or XTS tweak (which are based on the logical
	 * block number).
	 *
	 * XXX It's not clear why zero range isn't working, but we'll
	 * leave it disabled for encrypted inodes for now.  This is a
	 * bug we should fix....
	 */
	if (FUNC3(inode) &&
	    (mode & (FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_INSERT_RANGE |
		     FALLOC_FL_ZERO_RANGE)))
		return -EOPNOTSUPP;

	/* Return error if mode is not supported */
	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
		     FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_ZERO_RANGE |
		     FALLOC_FL_INSERT_RANGE))
		return -EOPNOTSUPP;

	if (mode & FALLOC_FL_PUNCH_HOLE)
		return FUNC8(inode, offset, len);

	ret = FUNC6(inode);
	if (ret)
		return ret;

	if (mode & FALLOC_FL_COLLAPSE_RANGE)
		return FUNC5(inode, offset, len);

	if (mode & FALLOC_FL_INSERT_RANGE)
		return FUNC7(inode, offset, len);

	if (mode & FALLOC_FL_ZERO_RANGE)
		return FUNC10(file, offset, len, mode);

	FUNC18(inode, offset, len, mode);
	lblk = offset >> blkbits;

	max_blocks = FUNC1(len, offset, blkbits);
	flags = EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT;
	if (mode & FALLOC_FL_KEEP_SIZE)
		flags |= EXT4_GET_BLOCKS_KEEP_SIZE;

	FUNC14(inode);

	/*
	 * We only support preallocation for extent-based files only
	 */
	if (!(FUNC9(inode, EXT4_INODE_EXTENTS))) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
	    (offset + len > FUNC12(inode) ||
	     offset + len > FUNC0(inode)->i_disksize)) {
		new_size = offset + len;
		ret = FUNC15(inode, new_size);
		if (ret)
			goto out;
	}

	/* Wait all existing dio workers, newcomers will block on i_mutex */
	FUNC13(inode);

	ret = FUNC4(file, lblk, max_blocks, new_size, flags);
	if (ret)
		goto out;

	if (file->f_flags & O_SYNC && FUNC2(inode->i_sb)->s_journal) {
		ret = FUNC17(FUNC2(inode->i_sb)->s_journal,
						FUNC0(inode)->i_sync_tid);
	}
out:
	FUNC16(inode);
	FUNC19(inode, offset, max_blocks, ret);
	return ret;
}