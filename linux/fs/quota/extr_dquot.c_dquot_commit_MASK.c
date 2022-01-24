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
struct quota_info {TYPE_2__** ops; } ;
struct TYPE_3__ {size_t type; } ;
struct dquot {int /*<<< orphan*/  dq_lock; TYPE_1__ dq_id; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_4__ {int (* commit_dqblk ) (struct dquot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dquot*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct dquot *dquot)
{
	int ret = 0;
	struct quota_info *dqopt = FUNC3(dquot->dq_sb);

	FUNC1(&dquot->dq_lock);
	if (!FUNC0(dquot))
		goto out_lock;
	/* Inactive dquot can be only if there was error during read/init
	 * => we have better not writing it */
	if (FUNC5(DQ_ACTIVE_B, &dquot->dq_flags))
		ret = dqopt->ops[dquot->dq_id.type]->commit_dqblk(dquot);
	else
		ret = -EIO;
out_lock:
	FUNC2(&dquot->dq_lock);
	return ret;
}