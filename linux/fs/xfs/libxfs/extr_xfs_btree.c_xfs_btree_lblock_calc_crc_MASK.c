#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  li_lsn; } ;
struct xfs_buf_log_item {TYPE_4__ bli_item; } ;
struct xfs_buf {TYPE_1__* b_mount; struct xfs_buf_log_item* b_log_item; } ;
struct TYPE_6__ {int /*<<< orphan*/  bb_lsn; } ;
struct TYPE_7__ {TYPE_2__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; } ;
struct TYPE_5__ {int /*<<< orphan*/  m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BTREE_LBLOCK_CRC_OFF ; 
 struct xfs_btree_block* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(
	struct xfs_buf		*bp)
{
	struct xfs_btree_block	*block = FUNC0(bp);
	struct xfs_buf_log_item	*bip = bp->b_log_item;

	if (!FUNC3(&bp->b_mount->m_sb))
		return;
	if (bip)
		block->bb_u.l.bb_lsn = FUNC1(bip->bli_item.li_lsn);
	FUNC2(bp, XFS_BTREE_LBLOCK_CRC_OFF);
}