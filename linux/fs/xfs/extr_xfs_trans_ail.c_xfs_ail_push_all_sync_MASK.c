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
struct xfs_log_item {int /*<<< orphan*/  li_lsn; } ;
struct xfs_ail {int /*<<< orphan*/  ail_empty; int /*<<< orphan*/  ail_lock; int /*<<< orphan*/  ail_task; int /*<<< orphan*/  ail_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct xfs_log_item* FUNC7 (struct xfs_ail*) ; 

void
FUNC8(
	struct xfs_ail  *ailp)
{
	struct xfs_log_item	*lip;
	FUNC0(wait);

	FUNC4(&ailp->ail_lock);
	while ((lip = FUNC7(ailp)) != NULL) {
		FUNC2(&ailp->ail_empty, &wait, TASK_UNINTERRUPTIBLE);
		ailp->ail_target = lip->li_lsn;
		FUNC6(ailp->ail_task);
		FUNC5(&ailp->ail_lock);
		FUNC3();
		FUNC4(&ailp->ail_lock);
	}
	FUNC5(&ailp->ail_lock);

	FUNC1(&ailp->ail_empty, &wait);
}