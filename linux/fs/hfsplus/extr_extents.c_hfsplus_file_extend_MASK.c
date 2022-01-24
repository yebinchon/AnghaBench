#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct hfsplus_sb_info {int total_blocks; int free_blocks; TYPE_1__* alloc_file; } ;
struct hfsplus_inode_info {scalar_t__ alloc_blocks; scalar_t__ first_blocks; scalar_t__ clump_blocks; scalar_t__ cached_start; int extent_state; scalar_t__ cached_blocks; TYPE_2__* cached_extents; int /*<<< orphan*/  extents_lock; TYPE_2__* first_extents; } ;
typedef  int /*<<< orphan*/  hfsplus_extent_rec ;
struct TYPE_7__ {void* block_count; void* start_block; } ;
struct TYPE_6__ {int i_size; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  EXTENT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int HFSPLUS_EXT_DIRTY ; 
 int HFSPLUS_EXT_NEW ; 
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  HFSPLUS_I_ALLOC_DIRTY ; 
 struct hfsplus_sb_info* FUNC1 (struct super_block*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct super_block*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct inode*,scalar_t__) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int) ; 
 int FUNC15 (struct super_block*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC16(struct inode *inode, bool zeroout)
{
	struct super_block *sb = inode->i_sb;
	struct hfsplus_sb_info *sbi = FUNC1(sb);
	struct hfsplus_inode_info *hip = FUNC0(inode);
	u32 start, len, goal;
	int res;

	if (sbi->alloc_file->i_size * 8 <
	    sbi->total_blocks - sbi->free_blocks + 8) {
		/* extend alloc file */
		FUNC14("extend alloc file! (%llu,%u,%u)\n",
		       sbi->alloc_file->i_size * 8,
		       sbi->total_blocks, sbi->free_blocks);
		return -ENOSPC;
	}

	FUNC12(&hip->extents_lock);
	if (hip->alloc_blocks == hip->first_blocks)
		goal = FUNC7(hip->first_extents);
	else {
		res = FUNC8(inode, hip->alloc_blocks);
		if (res)
			goto out;
		goal = FUNC7(hip->cached_extents);
	}

	len = hip->clump_blocks;
	start = FUNC5(sb, sbi->total_blocks, goal, &len);
	if (start >= sbi->total_blocks) {
		start = FUNC5(sb, goal, 0, &len);
		if (start >= goal) {
			res = -ENOSPC;
			goto out;
		}
	}

	if (zeroout) {
		res = FUNC15(sb, start, len, GFP_NOFS);
		if (res)
			goto out;
	}

	FUNC3(EXTENT, "extend %lu: %u,%u\n", inode->i_ino, start, len);

	if (hip->alloc_blocks <= hip->first_blocks) {
		if (!hip->first_blocks) {
			FUNC3(EXTENT, "first extents\n");
			/* no extents yet */
			hip->first_extents[0].start_block = FUNC2(start);
			hip->first_extents[0].block_count = FUNC2(len);
			res = 0;
		} else {
			/* try to append to extents in inode */
			res = FUNC4(hip->first_extents,
						 hip->alloc_blocks,
						 start, len);
			if (res == -ENOSPC)
				goto insert_extent;
		}
		if (!res) {
			FUNC6(hip->first_extents);
			hip->first_blocks += len;
		}
	} else {
		res = FUNC4(hip->cached_extents,
					 hip->alloc_blocks - hip->cached_start,
					 start, len);
		if (!res) {
			FUNC6(hip->cached_extents);
			hip->extent_state |= HFSPLUS_EXT_DIRTY;
			hip->cached_blocks += len;
		} else if (res == -ENOSPC)
			goto insert_extent;
	}
out:
	if (!res) {
		hip->alloc_blocks += len;
		FUNC13(&hip->extents_lock);
		FUNC10(inode, HFSPLUS_I_ALLOC_DIRTY);
		return 0;
	}
	FUNC13(&hip->extents_lock);
	return res;

insert_extent:
	FUNC3(EXTENT, "insert new extent\n");
	res = FUNC9(inode);
	if (res)
		goto out;

	FUNC11(hip->cached_extents, 0, sizeof(hfsplus_extent_rec));
	hip->cached_extents[0].start_block = FUNC2(start);
	hip->cached_extents[0].block_count = FUNC2(len);
	FUNC6(hip->cached_extents);
	hip->extent_state |= HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW;
	hip->cached_start = hip->alloc_blocks;
	hip->cached_blocks = len;

	res = 0;
	goto out;
}