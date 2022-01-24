#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int bc_flags; int bc_nlevels; scalar_t__ bc_tp; } ;
struct xfs_btree_block_change_owner_info {int /*<<< orphan*/  buffer_list; int /*<<< orphan*/  new_owner; } ;
struct TYPE_5__ {scalar_t__ bb_owner; } ;
struct TYPE_4__ {scalar_t__ bb_owner; } ;
struct TYPE_6__ {TYPE_2__ s; TYPE_1__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  XFS_BB_OWNER ; 
 int XFS_BTREE_LONG_PTRS ; 
 int XFS_BTREE_ROOT_IN_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfs_btree_block* FUNC3 (struct xfs_btree_cur*,int,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_btree_cur*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct xfs_buf*) ; 

__attribute__((used)) static int
FUNC7(
	struct xfs_btree_cur	*cur,
	int			level,
	void			*data)
{
	struct xfs_btree_block_change_owner_info	*bbcoi = data;
	struct xfs_btree_block	*block;
	struct xfs_buf		*bp;

	/* modify the owner */
	block = FUNC3(cur, level, &bp);
	if (cur->bc_flags & XFS_BTREE_LONG_PTRS) {
		if (block->bb_u.l.bb_owner == FUNC2(bbcoi->new_owner))
			return 0;
		block->bb_u.l.bb_owner = FUNC2(bbcoi->new_owner);
	} else {
		if (block->bb_u.s.bb_owner == FUNC1(bbcoi->new_owner))
			return 0;
		block->bb_u.s.bb_owner = FUNC1(bbcoi->new_owner);
	}

	/*
	 * If the block is a root block hosted in an inode, we might not have a
	 * buffer pointer here and we shouldn't attempt to log the change as the
	 * information is already held in the inode and discarded when the root
	 * block is formatted into the on-disk inode fork. We still change it,
	 * though, so everything is consistent in memory.
	 */
	if (!bp) {
		FUNC0(cur->bc_flags & XFS_BTREE_ROOT_IN_INODE);
		FUNC0(level == cur->bc_nlevels - 1);
		return 0;
	}

	if (cur->bc_tp) {
		if (!FUNC6(cur->bc_tp, bp)) {
			FUNC4(cur, bp, XFS_BB_OWNER);
			return -EAGAIN;
		}
	} else {
		FUNC5(bp, bbcoi->buffer_list);
	}

	return 0;
}