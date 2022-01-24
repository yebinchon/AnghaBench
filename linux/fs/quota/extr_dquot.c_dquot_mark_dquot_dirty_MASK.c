#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t type; } ;
struct dquot {TYPE_2__ dq_id; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_dirty; int /*<<< orphan*/  dq_flags; } ;
struct TYPE_6__ {int flags; TYPE_1__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqi_dirty_list; } ;

/* Variables and functions */
 int DQUOT_NOLIST_DIRTY ; 
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int /*<<< orphan*/  DQ_MOD_B ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct dquot *dquot)
{
	int ret = 1;

	if (!FUNC5(DQ_ACTIVE_B, &dquot->dq_flags))
		return 0;

	if (FUNC1(dquot->dq_sb)->flags & DQUOT_NOLIST_DIRTY)
		return FUNC4(DQ_MOD_B, &dquot->dq_flags);

	/* If quota is dirty already, we don't have to acquire dq_list_lock */
	if (FUNC5(DQ_MOD_B, &dquot->dq_flags))
		return 1;

	FUNC2(&dq_list_lock);
	if (!FUNC4(DQ_MOD_B, &dquot->dq_flags)) {
		FUNC0(&dquot->dq_dirty, &FUNC1(dquot->dq_sb)->
				info[dquot->dq_id.type].dqi_dirty_list);
		ret = 0;
	}
	FUNC3(&dq_list_lock);
	return ret;
}