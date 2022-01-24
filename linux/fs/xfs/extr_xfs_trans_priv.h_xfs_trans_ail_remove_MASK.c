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
struct xfs_log_item {int /*<<< orphan*/  li_flags; struct xfs_ail* li_ailp; } ;
struct xfs_ail {int /*<<< orphan*/  ail_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_IN_AIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ail*,struct xfs_log_item*,int) ; 

__attribute__((used)) static inline void
FUNC4(
	struct xfs_log_item	*lip,
	int			shutdown_type)
{
	struct xfs_ail		*ailp = lip->li_ailp;

	FUNC0(&ailp->ail_lock);
	/* xfs_trans_ail_delete() drops the AIL lock */
	if (FUNC2(XFS_LI_IN_AIL, &lip->li_flags))
		FUNC3(ailp, lip, shutdown_type);
	else
		FUNC1(&ailp->ail_lock);
}