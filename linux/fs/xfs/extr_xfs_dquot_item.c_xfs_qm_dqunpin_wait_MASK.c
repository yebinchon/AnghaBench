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
struct xfs_dquot {int /*<<< orphan*/  q_pincount; int /*<<< orphan*/  q_pinwait; int /*<<< orphan*/  q_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dquot*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(
	struct xfs_dquot	*dqp)
{
	FUNC0(FUNC1(dqp));
	if (FUNC2(&dqp->q_pincount) == 0)
		return;

	/*
	 * Give the log a push so we don't wait here too long.
	 */
	FUNC4(dqp->q_mount, 0);
	FUNC3(dqp->q_pinwait, (FUNC2(&dqp->q_pincount) == 0));
}