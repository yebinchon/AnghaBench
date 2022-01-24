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
struct xfs_quotainfo {int /*<<< orphan*/  qi_lru; } ;
struct xfs_dquot {scalar_t__ q_nrefs; TYPE_1__* q_mount; int /*<<< orphan*/  q_lru; } ;
struct TYPE_2__ {struct xfs_quotainfo* m_quotainfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  xs_qm_dquot_unused ; 

void
FUNC7(
	struct xfs_dquot	*dqp)
{
	FUNC0(dqp->q_nrefs > 0);
	FUNC0(FUNC1(dqp));

	FUNC4(dqp);

	if (--dqp->q_nrefs == 0) {
		struct xfs_quotainfo	*qi = dqp->q_mount->m_quotainfo;
		FUNC5(dqp);

		if (FUNC3(&qi->qi_lru, &dqp->q_lru))
			FUNC2(dqp->q_mount, xs_qm_dquot_unused);
	}
	FUNC6(dqp);
}