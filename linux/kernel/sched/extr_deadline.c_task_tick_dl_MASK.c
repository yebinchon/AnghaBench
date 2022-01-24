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
struct TYPE_2__ {scalar_t__ runtime; } ;
struct task_struct {TYPE_1__ dl; } ;
struct rq {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rq*) ; 
 scalar_t__ FUNC1 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rq*,int) ; 

__attribute__((used)) static void FUNC6(struct rq *rq, struct task_struct *p, int queued)
{
	FUNC4(rq);

	FUNC5(FUNC2(rq), rq, 1);
	/*
	 * Even when we have runtime, update_curr_dl() might have resulted in us
	 * not being the leftmost task anymore. In that case NEED_RESCHED will
	 * be set and schedule() will start a new hrtick for the next task.
	 */
	if (FUNC0(rq) && queued && p->dl.runtime > 0 &&
	    FUNC1(p, &rq->dl))
		FUNC3(rq, p);
}