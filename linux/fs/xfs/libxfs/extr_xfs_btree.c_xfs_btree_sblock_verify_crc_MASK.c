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
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;
struct TYPE_3__ {int /*<<< orphan*/  bb_lsn; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct xfs_btree_block {TYPE_2__ bb_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BTREE_SBLOCK_CRC_OFF ; 
 struct xfs_btree_block* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

bool
FUNC5(
	struct xfs_buf		*bp)
{
	struct xfs_btree_block  *block = FUNC0(bp);
	struct xfs_mount	*mp = bp->b_mount;

	if (FUNC4(&mp->m_sb)) {
		if (!FUNC3(mp, FUNC1(block->bb_u.s.bb_lsn)))
			return false;
		return FUNC2(bp, XFS_BTREE_SBLOCK_CRC_OFF);
	}

	return true;
}