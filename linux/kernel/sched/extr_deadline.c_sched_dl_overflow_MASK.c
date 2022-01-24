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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ dl_bw; int /*<<< orphan*/  inactive_timer; } ;
struct task_struct {TYPE_1__ dl; } ;
struct sched_attr {scalar_t__ sched_deadline; scalar_t__ sched_runtime; int sched_flags; scalar_t__ sched_period; } ;
struct dl_bw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int SCHED_FLAG_SUGOV ; 
 int /*<<< orphan*/  FUNC0 (struct dl_bw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dl_bw*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dl_bw*,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct dl_bw* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

int FUNC13(struct task_struct *p, int policy,
		      const struct sched_attr *attr)
{
	struct dl_bw *dl_b = FUNC4(FUNC10(p));
	u64 period = attr->sched_period ?: attr->sched_deadline;
	u64 runtime = attr->sched_runtime;
	u64 new_bw = FUNC6(policy) ? FUNC12(period, runtime) : 0;
	int cpus, err = -1;

	if (attr->sched_flags & SCHED_FLAG_SUGOV)
		return 0;

	/* !deadline task may carry old deadline bandwidth */
	if (new_bw == p->dl.dl_bw && FUNC11(p))
		return 0;

	/*
	 * Either if a task, enters, leave, or stays -deadline but changes
	 * its parameters, we may need to update accordingly the total
	 * allocated bandwidth of the container.
	 */
	FUNC8(&dl_b->lock);
	cpus = FUNC3(FUNC10(p));
	if (FUNC6(policy) && !FUNC11(p) &&
	    !FUNC1(dl_b, cpus, 0, new_bw)) {
		if (FUNC7(&p->dl.inactive_timer))
			FUNC2(dl_b, p->dl.dl_bw, cpus);
		FUNC0(dl_b, new_bw, cpus);
		err = 0;
	} else if (FUNC6(policy) && FUNC11(p) &&
		   !FUNC1(dl_b, cpus, p->dl.dl_bw, new_bw)) {
		/*
		 * XXX this is slightly incorrect: when the task
		 * utilization decreases, we should delay the total
		 * utilization change until the task's 0-lag point.
		 * But this would require to set the task's "inactive
		 * timer" when the task is not inactive.
		 */
		FUNC2(dl_b, p->dl.dl_bw, cpus);
		FUNC0(dl_b, new_bw, cpus);
		FUNC5(p, new_bw);
		err = 0;
	} else if (!FUNC6(policy) && FUNC11(p)) {
		/*
		 * Do not decrease the total deadline utilization here,
		 * switched_from_dl() will take care to do it at the correct
		 * (0-lag) time.
		 */
		err = 0;
	}
	FUNC9(&dl_b->lock);

	return err;
}