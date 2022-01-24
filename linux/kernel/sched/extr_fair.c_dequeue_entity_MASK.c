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
struct sched_entity {int /*<<< orphan*/  vruntime; scalar_t__ on_rq; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;

/* Variables and functions */
 int DEQUEUE_MOVE ; 
 int DEQUEUE_SAVE ; 
 int DEQUEUE_SLEEP ; 
 int /*<<< orphan*/  UPDATE_TG ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfs_rq*,struct sched_entity*,int) ; 

__attribute__((used)) static void
FUNC10(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
	/*
	 * Update run-time statistics of the 'current'.
	 */
	FUNC6(cfs_rq);

	/*
	 * When dequeuing a sched_entity, we must:
	 *   - Update loads to have both entity and cfs_rq synced with now.
	 *   - Subtract its load from the cfs_rq->runnable_avg.
	 *   - Subtract its previous weight from cfs_rq->load.weight.
	 *   - For group entity, update its weight to reflect the new share
	 *     of its group cfs_rq.
	 */
	FUNC7(cfs_rq, se, UPDATE_TG);
	FUNC3(cfs_rq, se);

	FUNC9(cfs_rq, se, flags);

	FUNC2(cfs_rq, se);

	if (se != cfs_rq->curr)
		FUNC0(cfs_rq, se);
	se->on_rq = 0;
	FUNC1(cfs_rq, se);

	/*
	 * Normalize after update_curr(); which will also have moved
	 * min_vruntime if @se is the one holding it back. But before doing
	 * update_min_vruntime() again, which will discount @se's position and
	 * can move min_vruntime forward still more.
	 */
	if (!(flags & DEQUEUE_SLEEP))
		se->vruntime -= cfs_rq->min_vruntime;

	/* return excess runtime on last dequeue */
	FUNC4(cfs_rq);

	FUNC5(se);

	/*
	 * Now advance min_vruntime if @se was the entity holding it back,
	 * except when: DEQUEUE_SAVE && !DEQUEUE_MOVE, in this case we'll be
	 * put back on, and if we advance min_vruntime, we'll be placed back
	 * further than we started -- ie. we'll be penalized.
	 */
	if ((flags & (DEQUEUE_SAVE | DEQUEUE_MOVE)) != DEQUEUE_SAVE)
		FUNC8(cfs_rq);
}