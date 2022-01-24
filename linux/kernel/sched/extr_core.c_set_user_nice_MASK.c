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
struct task_struct {int prio; void* static_prio; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int DEQUEUE_NOCLOCK ; 
 int DEQUEUE_SAVE ; 
 int ENQUEUE_NOCLOCK ; 
 int ENQUEUE_RESTORE ; 
 long MAX_NICE ; 
 long MIN_NICE ; 
 void* FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*,int) ; 
 int FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rq*,struct task_struct*) ; 
 int FUNC8 (struct rq*,struct task_struct*) ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 
 scalar_t__ FUNC10 (struct task_struct*) ; 
 long FUNC11 (struct task_struct*) ; 
 int FUNC12 (struct task_struct*) ; 
 struct rq* FUNC13 (struct task_struct*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC14 (struct rq*,struct task_struct*,struct rq_flags*) ; 
 scalar_t__ FUNC15 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct rq*) ; 

void FUNC17(struct task_struct *p, long nice)
{
	bool queued, running;
	int old_prio, delta;
	struct rq_flags rf;
	struct rq *rq;

	if (FUNC11(p) == nice || nice < MIN_NICE || nice > MAX_NICE)
		return;
	/*
	 * We have to be careful, if called from sys_setpriority(),
	 * the task might be in the middle of scheduling on another CPU.
	 */
	rq = FUNC13(p, &rf);
	FUNC16(rq);

	/*
	 * The RT priorities are set via sched_setscheduler(), but we still
	 * allow the 'normal' nice value to be set - but as expected
	 * it wont have any effect on scheduling until the task is
	 * SCHED_DEADLINE, SCHED_FIFO or SCHED_RR:
	 */
	if (FUNC9(p) || FUNC10(p)) {
		p->static_prio = FUNC0(nice);
		goto out_unlock;
	}
	queued = FUNC12(p);
	running = FUNC8(rq, p);
	if (queued)
		FUNC1(rq, p, DEQUEUE_SAVE | DEQUEUE_NOCLOCK);
	if (running)
		FUNC4(rq, p);

	p->static_prio = FUNC0(nice);
	FUNC6(p, true);
	old_prio = p->prio;
	p->prio = FUNC2(p);
	delta = p->prio - old_prio;

	if (queued) {
		FUNC3(rq, p, ENQUEUE_RESTORE | ENQUEUE_NOCLOCK);
		/*
		 * If the task increased its priority or is running and
		 * lowered its priority, then reschedule its CPU:
		 */
		if (delta < 0 || (delta > 0 && FUNC15(rq, p)))
			FUNC5(rq);
	}
	if (running)
		FUNC7(rq, p);
out_unlock:
	FUNC14(rq, p, &rf);
}