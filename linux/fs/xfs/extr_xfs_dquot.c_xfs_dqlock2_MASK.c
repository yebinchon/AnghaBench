#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  d_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  q_qlock; TYPE_1__ q_core; } ;
typedef  TYPE_2__ xfs_dquot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_QLOCK_NESTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(
	xfs_dquot_t	*d1,
	xfs_dquot_t	*d2)
{
	if (d1 && d2) {
		FUNC0(d1 != d2);
		if (FUNC1(d1->q_core.d_id) >
		    FUNC1(d2->q_core.d_id)) {
			FUNC2(&d2->q_qlock);
			FUNC3(&d1->q_qlock, XFS_QLOCK_NESTED);
		} else {
			FUNC2(&d1->q_qlock);
			FUNC3(&d2->q_qlock, XFS_QLOCK_NESTED);
		}
	} else if (d1) {
		FUNC2(&d1->q_qlock);
	} else if (d2) {
		FUNC2(&d2->q_qlock);
	}
}