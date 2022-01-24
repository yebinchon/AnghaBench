#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_trans {int dummy; } ;
struct xfs_buf_log_item {int /*<<< orphan*/  bli_flags; int /*<<< orphan*/  bli_refcount; } ;
struct xfs_buf {struct xfs_trans* b_transp; struct xfs_buf_log_item* b_log_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_BLI_ORDERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf_log_item*) ; 
 scalar_t__ FUNC3 (struct xfs_buf_log_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,struct xfs_buf*) ; 

bool
FUNC5(
	struct xfs_trans	*tp,
	struct xfs_buf		*bp)
{
	struct xfs_buf_log_item	*bip = bp->b_log_item;

	FUNC0(bp->b_transp == tp);
	FUNC0(bip != NULL);
	FUNC0(FUNC1(&bip->bli_refcount) > 0);

	if (FUNC3(bip))
		return false;

	bip->bli_flags |= XFS_BLI_ORDERED;
	FUNC2(bip);

	/*
	 * We don't log a dirty range of an ordered buffer but it still needs
	 * to be marked dirty and that it has been logged.
	 */
	FUNC4(tp, bp);
	return true;
}