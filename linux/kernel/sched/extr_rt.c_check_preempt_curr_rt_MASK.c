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
struct task_struct {scalar_t__ prio; } ;
struct rq {TYPE_1__* curr; } ;
struct TYPE_2__ {scalar_t__ prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct rq *rq, struct task_struct *p, int flags)
{
	if (p->prio < rq->curr->prio) {
		FUNC1(rq);
		return;
	}

#ifdef CONFIG_SMP
	/*
	 * If:
	 *
	 * - the newly woken task is of equal priority to the current task
	 * - the newly woken task is non-migratable while current is migratable
	 * - current will be preempted on the next reschedule
	 *
	 * we should check to see if current can readily move to a different
	 * cpu.  If so, we will reschedule to allow the push logic to try
	 * to move current somewhere else, making room for our non-migratable
	 * task.
	 */
	if (p->prio == rq->curr->prio && !test_tsk_need_resched(rq->curr))
		check_preempt_equal_prio(rq, p);
#endif
}