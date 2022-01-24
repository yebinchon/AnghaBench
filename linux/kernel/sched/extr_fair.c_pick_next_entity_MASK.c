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
struct sched_entity {int dummy; } ;
struct cfs_rq {struct sched_entity* next; struct sched_entity* last; struct sched_entity* skip; } ;

/* Variables and functions */
 struct sched_entity* FUNC0 (struct cfs_rq*) ; 
 struct sched_entity* FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 scalar_t__ FUNC3 (struct sched_entity*,struct sched_entity*) ; 
 int FUNC4 (struct sched_entity*,struct sched_entity*) ; 

__attribute__((used)) static struct sched_entity *
FUNC5(struct cfs_rq *cfs_rq, struct sched_entity *curr)
{
	struct sched_entity *left = FUNC0(cfs_rq);
	struct sched_entity *se;

	/*
	 * If curr is set we have to see if its left of the leftmost entity
	 * still in the tree, provided there was anything in the tree at all.
	 */
	if (!left || (curr && FUNC3(curr, left)))
		left = curr;

	se = left; /* ideally we run the leftmost entity */

	/*
	 * Avoid running the skip buddy, if running something else can
	 * be done without getting too unfair.
	 */
	if (cfs_rq->skip == se) {
		struct sched_entity *second;

		if (se == curr) {
			second = FUNC0(cfs_rq);
		} else {
			second = FUNC1(se);
			if (!second || (curr && FUNC3(curr, second)))
				second = curr;
		}

		if (second && FUNC4(second, left) < 1)
			se = second;
	}

	/*
	 * Prefer last buddy, try to return the CPU to a preempted task.
	 */
	if (cfs_rq->last && FUNC4(cfs_rq->last, left) < 1)
		se = cfs_rq->last;

	/*
	 * Someone really wants this to run. If it's not unfair, run it.
	 */
	if (cfs_rq->next && FUNC4(cfs_rq->next, left) < 1)
		se = cfs_rq->next;

	FUNC2(cfs_rq, se);

	return se;
}