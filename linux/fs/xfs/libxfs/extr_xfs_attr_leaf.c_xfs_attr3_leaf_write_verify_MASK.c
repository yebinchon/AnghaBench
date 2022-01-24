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
typedef  scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  li_lsn; } ;
struct xfs_buf_log_item {TYPE_2__ bli_item; } ;
struct xfs_buf {struct xfs_attr3_leaf_hdr* b_addr; struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;
struct TYPE_3__ {int /*<<< orphan*/  lsn; } ;
struct xfs_attr3_leaf_hdr {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_ATTR3_LEAF_CRC_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_buf	*bp)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_buf_log_item	*bip = bp->b_log_item;
	struct xfs_attr3_leaf_hdr *hdr3 = bp->b_addr;
	xfs_failaddr_t		fa;

	fa = FUNC1(bp);
	if (fa) {
		FUNC4(bp, -EFSCORRUPTED, fa);
		return;
	}

	if (!FUNC3(&mp->m_sb))
		return;

	if (bip)
		hdr3->info.lsn = FUNC0(bip->bli_item.li_lsn);

	FUNC2(bp, XFS_ATTR3_LEAF_CRC_OFF);
}