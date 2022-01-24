#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sched_dl_entity {int dl_yielded; int flags; int dl_throttled; int dl_overrun; scalar_t__ dl_boosted; int /*<<< orphan*/  runtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  exec_max; } ;
struct TYPE_4__ {scalar_t__ exec_start; int /*<<< orphan*/  sum_exec_runtime; TYPE_1__ statistics; } ;
struct task_struct {struct sched_dl_entity dl; TYPE_2__ se; } ;
struct rt_rq {int /*<<< orphan*/  rt_runtime_lock; int /*<<< orphan*/  rt_time; } ;
struct rq {struct rt_rq rt; int /*<<< orphan*/  dl; struct task_struct* curr; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  ENQUEUE_REPLENISH ; 
 int SCHED_FLAG_DL_OVERRUN ; 
 int SCHED_FLAG_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,scalar_t__) ; 
 unsigned long FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,scalar_t__) ; 
 int FUNC6 (struct rq*) ; 
 scalar_t__ FUNC7 (struct sched_dl_entity*) ; 
 scalar_t__ FUNC8 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,struct rq*,struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct rq*) ; 
 scalar_t__ FUNC18 (struct rq*) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 (struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct task_struct*) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static void FUNC24(struct rq *rq)
{
	struct task_struct *curr = rq->curr;
	struct sched_dl_entity *dl_se = &curr->dl;
	u64 delta_exec, scaled_delta_exec;
	int cpu = FUNC6(rq);
	u64 now;

	if (!FUNC9(curr) || !FUNC14(dl_se))
		return;

	/*
	 * Consumed budget is computed considering the time as
	 * observed by schedulable tasks (excluding time spent
	 * in hardirq context, etc.). Deadlines are instead
	 * computed using hard walltime. This seems to be the more
	 * natural solution, but the full ramifications of this
	 * approach need further study.
	 */
	now = FUNC18(rq);
	delta_exec = now - curr->se.exec_start;
	if (FUNC23((s64)delta_exec <= 0)) {
		if (FUNC23(dl_se->dl_yielded))
			goto throttle;
		return;
	}

	FUNC21(curr->se.statistics.exec_max,
		      FUNC13(curr->se.statistics.exec_max, delta_exec));

	curr->se.sum_exec_runtime += delta_exec;
	FUNC1(curr, delta_exec);

	curr->se.exec_start = now;
	FUNC5(curr, delta_exec);

	if (FUNC7(dl_se))
		return;

	/*
	 * For tasks that participate in GRUB, we implement GRUB-PA: the
	 * spare reclaimed bandwidth is used to clock down frequency.
	 *
	 * For the others, we still need to scale reservation parameters
	 * according to current frequency and CPU maximum capacity.
	 */
	if (FUNC23(dl_se->flags & SCHED_FLAG_RECLAIM)) {
		scaled_delta_exec = FUNC11(delta_exec,
						 rq,
						 &curr->dl);
	} else {
		unsigned long scale_freq = FUNC3(cpu);
		unsigned long scale_cpu = FUNC2(cpu);

		scaled_delta_exec = FUNC4(delta_exec, scale_freq);
		scaled_delta_exec = FUNC4(scaled_delta_exec, scale_cpu);
	}

	dl_se->runtime -= scaled_delta_exec;

throttle:
	if (FUNC8(dl_se) || dl_se->dl_yielded) {
		dl_se->dl_throttled = 1;

		/* If requested, inform the user about runtime overruns. */
		if (FUNC8(dl_se) &&
		    (dl_se->flags & SCHED_FLAG_DL_OVERRUN))
			dl_se->dl_overrun = 1;

		FUNC0(rq, curr, 0);
		if (FUNC23(dl_se->dl_boosted || !FUNC22(curr)))
			FUNC10(rq, curr, ENQUEUE_REPLENISH);

		if (!FUNC12(curr, &rq->dl))
			FUNC17(rq);
	}

	/*
	 * Because -- for now -- we share the rt bandwidth, we need to
	 * account our runtime there too, otherwise actual rt tasks
	 * would be able to exceed the shared quota.
	 *
	 * Account to the root rt group for now.
	 *
	 * The solution we're working towards is having the RT groups scheduled
	 * using deadline servers -- however there's a few nasties to figure
	 * out before that can happen.
	 */
	if (FUNC19()) {
		struct rt_rq *rt_rq = &rq->rt;

		FUNC15(&rt_rq->rt_runtime_lock);
		/*
		 * We'll let actual RT tasks worry about the overflow here, we
		 * have our own CBS to keep us inline; only account when RT
		 * bandwidth is relevant.
		 */
		if (FUNC20(rt_rq))
			rt_rq->rt_time += delta_exec;
		FUNC16(&rt_rq->rt_runtime_lock);
	}
}