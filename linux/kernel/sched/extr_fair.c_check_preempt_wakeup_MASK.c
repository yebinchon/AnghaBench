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
struct sched_entity {int /*<<< orphan*/  on_rq; } ;
struct task_struct {scalar_t__ policy; struct sched_entity se; } ;
struct rq {struct task_struct* idle; struct task_struct* curr; } ;
struct cfs_rq {scalar_t__ nr_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LAST_BUDDY ; 
 int /*<<< orphan*/  NEXT_BUDDY ; 
 scalar_t__ SCHED_NORMAL ; 
 int /*<<< orphan*/  WAKEUP_PREEMPTION ; 
 int WF_FORK ; 
 int /*<<< orphan*/  FUNC1 (struct sched_entity*) ; 
 scalar_t__ FUNC2 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct sched_entity**,struct sched_entity**) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ sched_nr_latency ; 
 int /*<<< orphan*/  FUNC7 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC8 (struct sched_entity*) ; 
 struct cfs_rq* FUNC9 (struct task_struct*) ; 
 int FUNC10 (struct task_struct*) ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sched_entity*,struct sched_entity*) ; 

__attribute__((used)) static void FUNC16(struct rq *rq, struct task_struct *p, int wake_flags)
{
	struct task_struct *curr = rq->curr;
	struct sched_entity *se = &curr->se, *pse = &p->se;
	struct cfs_rq *cfs_rq = FUNC9(curr);
	int scale = cfs_rq->nr_running >= sched_nr_latency;
	int next_buddy_marked = 0;

	if (FUNC13(se == pse))
		return;

	/*
	 * This is possible from callers such as attach_tasks(), in which we
	 * unconditionally check_prempt_curr() after an enqueue (which may have
	 * lead to a throttle).  This both saves work and prevents false
	 * next-buddy nomination below.
	 */
	if (FUNC13(FUNC12(FUNC1(pse))))
		return;

	if (FUNC6(NEXT_BUDDY) && scale && !(wake_flags & WF_FORK)) {
		FUNC8(pse);
		next_buddy_marked = 1;
	}

	/*
	 * We can come here with TIF_NEED_RESCHED already set from new task
	 * wake up path.
	 *
	 * Note: this also catches the edge-case of curr being in a throttled
	 * group (e.g. via set_curr_task), since update_curr() (in the
	 * enqueue of curr) will have resulted in resched being set.  This
	 * prevents us from potentially nominating it as a false LAST_BUDDY
	 * below.
	 */
	if (FUNC11(curr))
		return;

	/* Idle tasks are by definition preempted by non-idle tasks. */
	if (FUNC13(FUNC10(curr)) &&
	    FUNC4(!FUNC10(p)))
		goto preempt;

	/*
	 * Batch and idle tasks do not preempt non-idle tasks (their preemption
	 * is driven by the tick):
	 */
	if (FUNC13(p->policy != SCHED_NORMAL) || !FUNC6(WAKEUP_PREEMPTION))
		return;

	FUNC3(&se, &pse);
	FUNC14(FUNC1(se));
	FUNC0(!pse);
	if (FUNC15(se, pse) == 1) {
		/*
		 * Bias pick_next to pick the sched entity that is
		 * triggering this preemption.
		 */
		if (!next_buddy_marked)
			FUNC8(pse);
		goto preempt;
	}

	return;

preempt:
	FUNC5(rq);
	/*
	 * Only set the backward buddy when the current task is still
	 * on the rq. This can happen when a wakeup gets interleaved
	 * with schedule on the ->pre_schedule() or idle_balance()
	 * point, either of which can * drop the rq lock.
	 *
	 * Also, during early boot the idle thread is in the fair class,
	 * for obvious reasons its a bad idea to schedule back to it.
	 */
	if (FUNC13(!se->on_rq || curr == rq->idle))
		return;

	if (FUNC6(LAST_BUDDY) && scale && FUNC2(se))
		FUNC7(se);
}