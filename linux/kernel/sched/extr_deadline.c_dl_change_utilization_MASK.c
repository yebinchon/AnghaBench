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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  dl_bw; int /*<<< orphan*/  inactive_timer; scalar_t__ dl_non_contending; } ;
struct task_struct {TYPE_1__ dl; } ;
struct rq {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SCHED_FLAG_SUGOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 struct rq* FUNC7 (struct task_struct*) ; 

void FUNC8(struct task_struct *p, u64 new_bw)
{
	struct rq *rq;

	FUNC0(p->dl.flags & SCHED_FLAG_SUGOV);

	if (FUNC6(p))
		return;

	rq = FUNC7(p);
	if (p->dl.dl_non_contending) {
		FUNC5(&p->dl, &rq->dl);
		p->dl.dl_non_contending = 0;
		/*
		 * If the timer handler is currently running and the
		 * timer cannot be cancelled, inactive_task_timer()
		 * will see that dl_not_contending is not set, and
		 * will not touch the rq's active utilization,
		 * so we are still safe.
		 */
		if (FUNC3(&p->dl.inactive_timer) == 1)
			FUNC4(p);
	}
	FUNC2(p->dl.dl_bw, &rq->dl);
	FUNC1(new_bw, &rq->dl);
}