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
struct hrtimer {int dummy; } ;
struct sched_dl_entity {struct hrtimer dl_timer; } ;
struct task_struct {struct sched_dl_entity dl; } ;
struct rq {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_HARD ; 
 int /*<<< orphan*/  FUNC0 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct rq*) ; 
 struct rq* FUNC11 (struct task_struct*) ; 

__attribute__((used)) static int FUNC12(struct task_struct *p)
{
	struct sched_dl_entity *dl_se = &p->dl;
	struct hrtimer *timer = &dl_se->dl_timer;
	struct rq *rq = FUNC11(p);
	ktime_t now, act;
	s64 delta;

	FUNC8(&rq->lock);

	/*
	 * We want the timer to fire at the deadline, but considering
	 * that it is actually coming from rq->clock and not from
	 * hrtimer's time base reading.
	 */
	act = FUNC9(FUNC0(dl_se));
	now = FUNC2(timer);
	delta = FUNC6(now) - FUNC10(rq);
	act = FUNC5(act, delta);

	/*
	 * If the expiry time already passed, e.g., because the value
	 * chosen as the deadline is too small, don't even try to
	 * start the timer in the past!
	 */
	if (FUNC7(act, now) < 0)
		return 0;

	/*
	 * !enqueued will guarantee another callback; even if one is already in
	 * progress. This ensures a balanced {get,put}_task_struct().
	 *
	 * The race against __run_timer() clearing the enqueued state is
	 * harmless because we're holding task_rq()->lock, therefore the timer
	 * expiring after we've done the check will wait on its task_rq_lock()
	 * and observe our state.
	 */
	if (!FUNC3(timer)) {
		FUNC1(p);
		FUNC4(timer, act, HRTIMER_MODE_ABS_HARD);
	}

	return 1;
}