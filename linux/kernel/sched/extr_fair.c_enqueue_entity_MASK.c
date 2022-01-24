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
struct sched_entity {int on_rq; int /*<<< orphan*/  vruntime; } ;
struct cfs_rq {int nr_running; scalar_t__ min_vruntime; struct sched_entity* curr; } ;

/* Variables and functions */
 int DO_ATTACH ; 
 int ENQUEUE_MIGRATED ; 
 int ENQUEUE_WAKEUP ; 
 int UPDATE_TG ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfs_rq*,struct sched_entity*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cfs_rq*,struct sched_entity*,int) ; 

__attribute__((used)) static void
FUNC12(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
	bool renorm = !(flags & ENQUEUE_WAKEUP) || (flags & ENQUEUE_MIGRATED);
	bool curr = cfs_rq->curr == se;

	/*
	 * If we're the current task, we must renormalise before calling
	 * update_curr().
	 */
	if (renorm && curr)
		se->vruntime += cfs_rq->min_vruntime;

	FUNC9(cfs_rq);

	/*
	 * Otherwise, renormalise after, such that we're placed at the current
	 * moment in time, instead of some random moment in the past. Being
	 * placed in the past could significantly boost this task to the
	 * fairness detriment of existing tasks.
	 */
	if (renorm && !curr)
		se->vruntime += cfs_rq->min_vruntime;

	/*
	 * When enqueuing a sched_entity, we must:
	 *   - Update loads to have both entity and cfs_rq synced with now.
	 *   - Add its load to cfs_rq->runnable_avg
	 *   - For group_entity, update its weight to reflect the new share of
	 *     its group cfs_rq
	 *   - Add its new weight to cfs_rq->load.weight
	 */
	FUNC10(cfs_rq, se, UPDATE_TG | DO_ATTACH);
	FUNC8(se);
	FUNC5(cfs_rq, se);
	FUNC1(cfs_rq, se);

	if (flags & ENQUEUE_WAKEUP)
		FUNC7(cfs_rq, se, 0);

	FUNC3();
	FUNC11(cfs_rq, se, flags);
	FUNC4(cfs_rq, se);
	if (!curr)
		FUNC0(cfs_rq, se);
	se->on_rq = 1;

	if (cfs_rq->nr_running == 1) {
		FUNC6(cfs_rq);
		FUNC2(cfs_rq);
	}
}