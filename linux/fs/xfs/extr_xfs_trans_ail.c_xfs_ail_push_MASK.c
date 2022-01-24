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
typedef  int /*<<< orphan*/  xfs_lsn_t ;
struct xfs_log_item {int dummy; } ;
struct xfs_ail {int /*<<< orphan*/  ail_task; int /*<<< orphan*/  ail_target; int /*<<< orphan*/  ail_mount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfs_log_item* FUNC4 (struct xfs_ail*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_ail*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(
	struct xfs_ail		*ailp,
	xfs_lsn_t		threshold_lsn)
{
	struct xfs_log_item	*lip;

	lip = FUNC4(ailp);
	if (!lip || FUNC0(ailp->ail_mount) ||
	    FUNC1(threshold_lsn, ailp->ail_target) <= 0)
		return;

	/*
	 * Ensure that the new target is noticed in push code before it clears
	 * the XFS_AIL_PUSHING_BIT.
	 */
	FUNC2();
	FUNC5(ailp, &ailp->ail_target, &threshold_lsn);
	FUNC2();

	FUNC3(ailp->ail_task);
}