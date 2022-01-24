#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_sb {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;
struct TYPE_5__ {int /*<<< orphan*/  sb_lsn; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_SB_CRC_OFF ; 
 int /*<<< orphan*/  __this_address ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_sb*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ; 
 int FUNC6 (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(
	struct xfs_buf		*bp)
{
	struct xfs_sb		sb;
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_buf_log_item	*bip = bp->b_log_item;
	int			error;

	/*
	 * Check all the superblock fields.  Don't byteswap the xquota flags
	 * because _verify_common checks the on-disk values.
	 */
	FUNC1(&sb, FUNC0(bp), false);
	error = FUNC5(mp, bp, &sb);
	if (error)
		goto out_error;
	error = FUNC6(mp, bp, &sb);
	if (error)
		goto out_error;

	if (!FUNC4(&mp->m_sb))
		return;

	if (bip)
		FUNC0(bp)->sb_lsn = FUNC2(bip->bli_item.li_lsn);

	FUNC3(bp, XFS_SB_CRC_OFF);
	return;

out_error:
	FUNC7(bp, error, __this_address);
}