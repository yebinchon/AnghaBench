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
struct TYPE_3__ {int /*<<< orphan*/  li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;
struct TYPE_4__ {int /*<<< orphan*/  agf_lsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_AGF_CRC_OFF ; 
 TYPE_2__* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(
	struct xfs_buf	*bp)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_buf_log_item	*bip = bp->b_log_item;
	xfs_failaddr_t		fa;

	fa = FUNC2(bp);
	if (fa) {
		FUNC5(bp, -EFSCORRUPTED, fa);
		return;
	}

	if (!FUNC4(&mp->m_sb))
		return;

	if (bip)
		FUNC0(bp)->agf_lsn = FUNC1(bip->bli_item.li_lsn);

	FUNC3(bp, XFS_AGF_CRC_OFF);
}