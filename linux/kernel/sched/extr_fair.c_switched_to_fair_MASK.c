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
struct task_struct {int dummy; } ;
struct rq {struct task_struct* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct rq *rq, struct task_struct *p)
{
	FUNC0(p);

	if (FUNC3(p)) {
		/*
		 * We were most likely switched from sched_rt, so
		 * kick off the schedule if running, otherwise just see
		 * if we can still preempt the current task.
		 */
		if (rq->curr == p)
			FUNC2(rq);
		else
			FUNC1(rq, p, 0);
	}
}