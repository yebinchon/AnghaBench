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
typedef  scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_dsymlink_hdr {int /*<<< orphan*/  sl_lsn; } ;
struct TYPE_2__ {int /*<<< orphan*/  li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_dsymlink_hdr* b_addr; struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_SYMLINK_CRC_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_buf	*bp)
{
	struct xfs_mount *mp = bp->b_mount;
	struct xfs_buf_log_item	*bip = bp->b_log_item;
	xfs_failaddr_t		fa;

	/* no verification of non-crc buffers */
	if (!FUNC2(&mp->m_sb))
		return;

	fa = FUNC3(bp);
	if (fa) {
		FUNC4(bp, -EFSCORRUPTED, fa);
		return;
	}

	if (bip) {
		struct xfs_dsymlink_hdr *dsl = bp->b_addr;
		dsl->sl_lsn = FUNC0(bip->bli_item.li_lsn);
	}
	FUNC1(bp, XFS_SYMLINK_CRC_OFF);
}