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
struct task_struct {int state; } ;
struct TYPE_2__ {int /*<<< orphan*/  block_start; int /*<<< orphan*/  sleep_start; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {struct sched_entity* curr; } ;

/* Variables and functions */
 int DEQUEUE_SLEEP ; 
 int TASK_INTERRUPTIBLE ; 
 int TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct task_struct* FUNC5 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static inline void
FUNC7(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{

	if (!FUNC4())
		return;

	/*
	 * Mark the end of the wait period if dequeueing a
	 * waiting task:
	 */
	if (se != cfs_rq->curr)
		FUNC6(cfs_rq, se);

	if ((flags & DEQUEUE_SLEEP) && FUNC1(se)) {
		struct task_struct *tsk = FUNC5(se);

		if (tsk->state & TASK_INTERRUPTIBLE)
			FUNC0(se->statistics.sleep_start,
				      FUNC2(FUNC3(cfs_rq)));
		if (tsk->state & TASK_UNINTERRUPTIBLE)
			FUNC0(se->statistics.block_start,
				      FUNC2(FUNC3(cfs_rq)));
	}
}