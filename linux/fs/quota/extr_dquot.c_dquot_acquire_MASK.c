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
struct quota_info {TYPE_1__** ops; int /*<<< orphan*/ * info; } ;
struct TYPE_4__ {size_t type; } ;
struct dquot {int /*<<< orphan*/  dq_lock; int /*<<< orphan*/  dq_flags; TYPE_2__ dq_id; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_off; } ;
struct TYPE_3__ {int (* read_dqblk ) (struct dquot*) ;int (* commit_dqblk ) (struct dquot*) ;int (* write_file_info ) (int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int /*<<< orphan*/  DQ_READ_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct dquot*) ; 
 int FUNC7 (struct dquot*) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct dquot *dquot)
{
	int ret = 0, ret2 = 0;
	struct quota_info *dqopt = FUNC3(dquot->dq_sb);

	FUNC1(&dquot->dq_lock);
	if (!FUNC9(DQ_READ_B, &dquot->dq_flags)) {
		ret = dqopt->ops[dquot->dq_id.type]->read_dqblk(dquot);
		if (ret < 0)
			goto out_iolock;
	}
	/* Make sure flags update is visible after dquot has been filled */
	FUNC5();
	FUNC4(DQ_READ_B, &dquot->dq_flags);
	/* Instantiate dquot if needed */
	if (!FUNC9(DQ_ACTIVE_B, &dquot->dq_flags) && !dquot->dq_off) {
		ret = dqopt->ops[dquot->dq_id.type]->commit_dqblk(dquot);
		/* Write the info if needed */
		if (FUNC0(&dqopt->info[dquot->dq_id.type])) {
			ret2 = dqopt->ops[dquot->dq_id.type]->write_file_info(
					dquot->dq_sb, dquot->dq_id.type);
		}
		if (ret < 0)
			goto out_iolock;
		if (ret2 < 0) {
			ret = ret2;
			goto out_iolock;
		}
	}
	/*
	 * Make sure flags update is visible after on-disk struct has been
	 * allocated. Paired with smp_rmb() in dqget().
	 */
	FUNC5();
	FUNC4(DQ_ACTIVE_B, &dquot->dq_flags);
out_iolock:
	FUNC2(&dquot->dq_lock);
	return ret;
}