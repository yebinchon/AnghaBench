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
struct task_struct {scalar_t__ on_rq; int /*<<< orphan*/  dl; } ;
struct rq {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 int DEQUEUE_SAVE ; 
 int DEQUEUE_SLEEP ; 
 scalar_t__ TASK_ON_RQ_MIGRATING ; 
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 

__attribute__((used)) static void FUNC5(struct rq *rq, struct task_struct *p, int flags)
{
	FUNC4(rq);
	FUNC0(rq, p, flags);

	if (p->on_rq == TASK_ON_RQ_MIGRATING || flags & DEQUEUE_SAVE) {
		FUNC2(&p->dl, &rq->dl);
		FUNC1(&p->dl, &rq->dl);
	}

	/*
	 * This check allows to start the inactive timer (or to immediately
	 * decrease the active utilization, if needed) in two cases:
	 * when the task blocks and when it is terminating
	 * (p->state == TASK_DEAD). We can handle the two cases in the same
	 * way, because from GRUB's point of view the same thing is happening
	 * (the task moves from "active contending" to "active non contending"
	 * or "inactive")
	 */
	if (flags & DEQUEUE_SLEEP)
		FUNC3(p);
}