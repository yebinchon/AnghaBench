#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
struct TYPE_9__ {scalar_t__ alloc_blocks; scalar_t__ first_blocks; scalar_t__ clump_blocks; scalar_t__ cached_start; int flags; scalar_t__ cached_blocks; TYPE_1__* cached_extents; int /*<<< orphan*/  extents_lock; TYPE_1__* first_extents; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {void* count; void* block; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  EXTENT ; 
 scalar_t__ HFS_FIRSTUSER_CNID ; 
 int /*<<< orphan*/  HFS_FLG_ALT_MDB_DIRTY ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 int /*<<< orphan*/  HFS_FLG_MDB_DIRTY ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 TYPE_5__* FUNC1 (struct super_block*) ; 
 void* FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct inode*,scalar_t__) ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (struct super_block*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	u32 start, len, goal;
	int res;

	FUNC13(&FUNC0(inode)->extents_lock);
	if (FUNC0(inode)->alloc_blocks == FUNC0(inode)->first_blocks)
		goal = FUNC6(FUNC0(inode)->first_extents);
	else {
		res = FUNC7(inode, FUNC0(inode)->alloc_blocks);
		if (res)
			goto out;
		goal = FUNC6(FUNC0(inode)->cached_extents);
	}

	len = FUNC0(inode)->clump_blocks;
	start = FUNC10(sb, goal, &len);
	if (!len) {
		res = -ENOSPC;
		goto out;
	}

	FUNC4(EXTENT, "extend %lu: %u,%u\n", inode->i_ino, start, len);
	if (FUNC0(inode)->alloc_blocks == FUNC0(inode)->first_blocks) {
		if (!FUNC0(inode)->first_blocks) {
			FUNC4(EXTENT, "first extents\n");
			/* no extents yet */
			FUNC0(inode)->first_extents[0].block = FUNC2(start);
			FUNC0(inode)->first_extents[0].count = FUNC2(len);
			res = 0;
		} else {
			/* try to append to extents in inode */
			res = FUNC3(FUNC0(inode)->first_extents,
					     FUNC0(inode)->alloc_blocks,
					     start, len);
			if (res == -ENOSPC)
				goto insert_extent;
		}
		if (!res) {
			FUNC5(FUNC0(inode)->first_extents);
			FUNC0(inode)->first_blocks += len;
		}
	} else {
		res = FUNC3(FUNC0(inode)->cached_extents,
				     FUNC0(inode)->alloc_blocks -
				     FUNC0(inode)->cached_start,
				     start, len);
		if (!res) {
			FUNC5(FUNC0(inode)->cached_extents);
			FUNC0(inode)->flags |= HFS_FLG_EXT_DIRTY;
			FUNC0(inode)->cached_blocks += len;
		} else if (res == -ENOSPC)
			goto insert_extent;
	}
out:
	FUNC14(&FUNC0(inode)->extents_lock);
	if (!res) {
		FUNC0(inode)->alloc_blocks += len;
		FUNC11(inode);
		if (inode->i_ino < HFS_FIRSTUSER_CNID)
			FUNC15(HFS_FLG_ALT_MDB_DIRTY, &FUNC1(sb)->flags);
		FUNC15(HFS_FLG_MDB_DIRTY, &FUNC1(sb)->flags);
		FUNC9(sb);
	}
	return res;

insert_extent:
	FUNC4(EXTENT, "insert new extent\n");
	res = FUNC8(inode);
	if (res)
		goto out;

	FUNC12(FUNC0(inode)->cached_extents, 0, sizeof(hfs_extent_rec));
	FUNC0(inode)->cached_extents[0].block = FUNC2(start);
	FUNC0(inode)->cached_extents[0].count = FUNC2(len);
	FUNC5(FUNC0(inode)->cached_extents);
	FUNC0(inode)->flags |= HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW;
	FUNC0(inode)->cached_start = FUNC0(inode)->alloc_blocks;
	FUNC0(inode)->cached_blocks = len;

	res = 0;
	goto out;
}