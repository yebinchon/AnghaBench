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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int blocks; int size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_reserved_data_blocks; } ;
struct TYPE_3__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct path const*,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(const struct path *path, struct kstat *stat,
		      u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC3(path->dentry);
	u64 delalloc_blocks;

	FUNC4(path, stat, request_mask, query_flags);

	/*
	 * If there is inline data in the inode, the inode will normally not
	 * have data blocks allocated (it may have an external xattr block).
	 * Report at least one sector for such files, so tools like tar, rsync,
	 * others don't incorrectly think the file is completely sparse.
	 */
	if (FUNC6(FUNC5(inode)))
		stat->blocks += (stat->size + 511) >> 9;

	/*
	 * We can't update i_blocks if the block allocation is delayed
	 * otherwise in the case of system crash before the real block
	 * allocation is done, we will have i_blocks inconsistent with
	 * on-disk file blocks.
	 * We always keep i_blocks updated together with real
	 * allocation. But to not confuse with user, stat
	 * will return the blocks that include the delayed allocation
	 * blocks for this file.
	 */
	delalloc_blocks = FUNC0(FUNC2(inode->i_sb),
				   FUNC1(inode)->i_reserved_data_blocks);
	stat->blocks += delalloc_blocks << (inode->i_sb->s_blocksize_bits - 9);
	return 0;
}