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
struct task_struct {TYPE_1__* sched_class; int /*<<< orphan*/  recent_used_cpu; int /*<<< orphan*/  state; int /*<<< orphan*/  pi_lock; } ;
struct rq_flags {int /*<<< orphan*/  flags; } ;
struct rq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* task_woken ) (struct rq*,struct task_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENQUEUE_NOCLOCK ; 
 int /*<<< orphan*/  SD_BALANCE_FORK ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  WF_FORK ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct rq* FUNC1 (struct task_struct*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC7 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct rq*,struct task_struct*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct rq*) ; 

void FUNC14(struct task_struct *p)
{
	struct rq_flags rf;
	struct rq *rq;

	FUNC5(&p->pi_lock, rf.flags);
	p->state = TASK_RUNNING;
#ifdef CONFIG_SMP
	/*
	 * Fork balancing, do it here and not earlier because:
	 *  - cpus_ptr can change in the fork path
	 *  - any previously selected CPU might disappear through hotplug
	 *
	 * Use __set_task_cpu() to avoid calling sched_class::migrate_task_rq,
	 * as we're not fully set-up yet.
	 */
	p->recent_used_cpu = task_cpu(p);
	__set_task_cpu(p, select_task_rq(p, task_cpu(p), SD_BALANCE_FORK, 0));
#endif
	rq = FUNC1(p, &rf);
	FUNC13(rq);
	FUNC4(p);

	FUNC2(rq, p, ENQUEUE_NOCLOCK);
	FUNC12(p);
	FUNC3(rq, p, WF_FORK);
#ifdef CONFIG_SMP
	if (p->sched_class->task_woken) {
		/*
		 * Nothing relies on rq->lock after this, so its fine to
		 * drop it.
		 */
		rq_unpin_lock(rq, &rf);
		p->sched_class->task_woken(rq, p);
		rq_repin_lock(rq, &rf);
	}
#endif
	FUNC11(rq, p, &rf);
}