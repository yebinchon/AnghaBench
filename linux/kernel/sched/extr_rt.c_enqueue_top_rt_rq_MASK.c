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
struct rt_rq {int rt_queued; int /*<<< orphan*/  rt_nr_running; } ;
struct rq {struct rt_rq rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,int /*<<< orphan*/ ) ; 
 struct rq* FUNC3 (struct rt_rq*) ; 
 scalar_t__ FUNC4 (struct rt_rq*) ; 

__attribute__((used)) static void
FUNC5(struct rt_rq *rt_rq)
{
	struct rq *rq = FUNC3(rt_rq);

	FUNC0(&rq->rt != rt_rq);

	if (rt_rq->rt_queued)
		return;

	if (FUNC4(rt_rq))
		return;

	if (rt_rq->rt_nr_running) {
		FUNC1(rq, rt_rq->rt_nr_running);
		rt_rq->rt_queued = 1;
	}

	/* Kick cpufreq (see the comment in kernel/sched/sched.h). */
	FUNC2(rq, 0);
}