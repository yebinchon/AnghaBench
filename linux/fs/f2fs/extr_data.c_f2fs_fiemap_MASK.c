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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct fiemap_extent_info {int fi_flags; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_size; } ;
typedef  int sector_t ;
typedef  int pgoff_t ;
struct TYPE_2__ {int max_file_blocks; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  F2FS_GET_BLOCK_FIEMAP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FIEMAP_EXTENT_DATA_ENCRYPTED ; 
 int /*<<< orphan*/  FIEMAP_EXTENT_LAST ; 
 int /*<<< orphan*/  FIEMAP_EXTENT_UNWRITTEN ; 
 int FIEMAP_FLAG_CACHE ; 
 int FIEMAP_FLAG_SYNC ; 
 int FIEMAP_FLAG_XATTR ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct fiemap_extent_info*,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,struct fiemap_extent_info*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct fiemap_extent_info*,int) ; 
 int FUNC13 (struct fiemap_extent_info*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

int FUNC19(struct inode *inode, struct fiemap_extent_info *fieinfo,
		u64 start, u64 len)
{
	struct buffer_head map_bh;
	sector_t start_blk, last_blk;
	pgoff_t next_pgofs;
	u64 logical = 0, phys = 0, size = 0;
	u32 flags = 0;
	int ret = 0;

	if (fieinfo->fi_flags & FIEMAP_FLAG_CACHE) {
		ret = FUNC9(inode);
		if (ret)
			return ret;
	}

	ret = FUNC12(fieinfo, FIEMAP_FLAG_SYNC | FIEMAP_FLAG_XATTR);
	if (ret)
		return ret;

	FUNC15(inode);

	if (fieinfo->fi_flags & FIEMAP_FLAG_XATTR) {
		ret = FUNC10(inode, fieinfo);
		goto out;
	}

	if (FUNC6(inode) || FUNC7(inode)) {
		ret = FUNC8(inode, fieinfo, start, len);
		if (ret != -EAGAIN)
			goto out;
	}

	if (FUNC17(inode, len) == 0)
		len = FUNC2(inode, 1);

	start_blk = FUNC17(inode, start);
	last_blk = FUNC17(inode, start + len - 1);

next:
	FUNC18(&map_bh, 0, sizeof(struct buffer_head));
	map_bh.b_size = len;

	ret = FUNC14(inode, start_blk, &map_bh, 0,
					F2FS_GET_BLOCK_FIEMAP, &next_pgofs);
	if (ret)
		goto out;

	/* HOLE */
	if (!FUNC3(&map_bh)) {
		start_blk = next_pgofs;

		if (FUNC2(inode, start_blk) < FUNC2(inode,
					FUNC0(inode)->max_file_blocks))
			goto prep_next;

		flags |= FIEMAP_EXTENT_LAST;
	}

	if (size) {
		if (FUNC1(inode))
			flags |= FIEMAP_EXTENT_DATA_ENCRYPTED;

		ret = FUNC13(fieinfo, logical,
				phys, size, flags);
	}

	if (start_blk > last_blk || ret)
		goto out;

	logical = FUNC2(inode, start_blk);
	phys = FUNC2(inode, map_bh.b_blocknr);
	size = map_bh.b_size;
	flags = 0;
	if (FUNC4(&map_bh))
		flags = FIEMAP_EXTENT_UNWRITTEN;

	start_blk += FUNC17(inode, size);

prep_next:
	FUNC5();
	if (FUNC11(current))
		ret = -EINTR;
	else
		goto next;
out:
	if (ret == 1)
		ret = 0;

	FUNC16(inode);
	return ret;
}