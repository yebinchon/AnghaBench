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
typedef  int u32 ;
struct TYPE_2__ {int period_contrib; int load_sum; int runnable_load_sum; void* runnable_load_avg; void* load_avg; } ;
struct sched_entity {unsigned long runnable_weight; scalar_t__ on_rq; TYPE_1__ avg; int /*<<< orphan*/  load; } ;
struct cfs_rq {struct sched_entity* curr; } ;

/* Variables and functions */
 int LOAD_AVG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*,struct sched_entity*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*,struct sched_entity*) ; 
 int FUNC7 (struct sched_entity*) ; 
 int FUNC8 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct cfs_rq *cfs_rq, struct sched_entity *se,
			    unsigned long weight, unsigned long runnable)
{
	if (se->on_rq) {
		/* commit outstanding execution time */
		if (cfs_rq->curr == se)
			FUNC9(cfs_rq);
		FUNC0(cfs_rq, se);
		FUNC3(cfs_rq, se);
	}
	FUNC2(cfs_rq, se);

	se->runnable_weight = runnable;
	FUNC10(&se->load, weight);

#ifdef CONFIG_SMP
	do {
		u32 divider = LOAD_AVG_MAX - 1024 + se->avg.period_contrib;

		se->avg.load_avg = div_u64(se_weight(se) * se->avg.load_sum, divider);
		se->avg.runnable_load_avg =
			div_u64(se_runnable(se) * se->avg.runnable_load_sum, divider);
	} while (0);
#endif

	FUNC5(cfs_rq, se);
	if (se->on_rq) {
		FUNC1(cfs_rq, se);
		FUNC6(cfs_rq, se);
	}
}