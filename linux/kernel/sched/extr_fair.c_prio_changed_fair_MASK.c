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
struct task_struct {int prio; } ;
struct rq {struct task_struct* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static void
FUNC3(struct rq *rq, struct task_struct *p, int oldprio)
{
	if (!FUNC2(p))
		return;

	/*
	 * Reschedule if we are currently running on this runqueue and
	 * our priority decreased, or if we are not currently running on
	 * this runqueue and our priority is higher than the current's
	 */
	if (rq->curr == p) {
		if (p->prio > oldprio)
			FUNC1(rq);
	} else
		FUNC0(rq, p, 0);
}