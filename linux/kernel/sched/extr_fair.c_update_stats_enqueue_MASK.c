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
struct cfs_rq {struct sched_entity* curr; } ;

/* Variables and functions */
 int ENQUEUE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static inline void
FUNC3(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
	if (!FUNC0())
		return;

	/*
	 * Are we enqueueing a waiting task? (for current tasks
	 * a dequeue/enqueue event is a NOP)
	 */
	if (se != cfs_rq->curr)
		FUNC2(cfs_rq, se);

	if (flags & ENQUEUE_WAKEUP)
		FUNC1(cfs_rq, se);
}