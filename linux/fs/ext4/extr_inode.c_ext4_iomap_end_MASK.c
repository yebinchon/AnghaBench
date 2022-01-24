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
struct iomap {scalar_t__ offset; scalar_t__ length; } ;
struct inode {int i_blkbits; scalar_t__ i_nlink; int /*<<< orphan*/  i_size; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_orphan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 unsigned int IOMAP_FAULT ; 
 unsigned int IOMAP_WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC5 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, loff_t offset, loff_t length,
			  ssize_t written, unsigned flags, struct iomap *iomap)
{
	int ret = 0;
	handle_t *handle;
	int blkbits = inode->i_blkbits;
	bool truncate = false;

	if (!(flags & IOMAP_WRITE) || (flags & IOMAP_FAULT))
		return 0;

	handle = FUNC5(inode, EXT4_HT_INODE, 2);
	if (FUNC2(handle)) {
		ret = FUNC3(handle);
		goto orphan_del;
	}
	if (FUNC10(inode, offset + written))
		FUNC7(handle, inode);
	/*
	 * We may need to truncate allocated but not written blocks beyond EOF.
	 */
	if (iomap->offset + iomap->length > 
	    FUNC0(inode->i_size, 1 << blkbits)) {
		ext4_lblk_t written_blk, end_blk;

		written_blk = (offset + written) >> blkbits;
		end_blk = (offset + length) >> blkbits;
		if (written_blk < end_blk && FUNC4(inode))
			truncate = true;
	}
	/*
	 * Remove inode from orphan list if we were extending a inode and
	 * everything went fine.
	 */
	if (!truncate && inode->i_nlink &&
	    !FUNC11(&FUNC1(inode)->i_orphan))
		FUNC8(handle, inode);
	FUNC6(handle);
	if (truncate) {
		FUNC9(inode);
orphan_del:
		/*
		 * If truncate failed early the inode might still be on the
		 * orphan list; we need to make sure the inode is removed from
		 * the orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC8(NULL, inode);
	}
	return ret;
}