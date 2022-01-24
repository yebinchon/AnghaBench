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
struct quota_info {int /*<<< orphan*/  dqio_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct dquot {TYPE_1__ dq_id; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_off; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dquot*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct quota_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dquot *dquot)
{
	struct quota_info *dqopt = FUNC4(dquot->dq_sb);
	int ret;
	bool alloc = false;

	/*
	 * If space for dquot is already allocated, we don't need any
	 * protection as we'll only overwrite the place of dquot. We are
	 * still protected by concurrent writes of the same dquot by
	 * dquot->dq_lock.
	 */
	if (!dquot->dq_off) {
		alloc = true;
		FUNC1(&dqopt->dqio_sem);
	} else {
		FUNC0(&dqopt->dqio_sem);
	}
	ret = FUNC2(
			FUNC3(dquot->dq_sb, dquot->dq_id.type)->dqi_priv,
			dquot);
	if (alloc)
		FUNC6(&dqopt->dqio_sem);
	else
		FUNC5(&dqopt->dqio_sem);
	return ret;
}