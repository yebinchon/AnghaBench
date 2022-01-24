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
struct sched_dl_entity {scalar_t__ dl_runtime; int dl_non_contending; scalar_t__ deadline; int runtime; int dl_period; int /*<<< orphan*/  dl_bw; struct hrtimer inactive_timer; } ;
struct task_struct {scalar_t__ state; struct sched_dl_entity dl; } ;
struct rq {int /*<<< orphan*/  dl; } ;
struct dl_rq {int dummy; } ;
struct dl_bw {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_HARD ; 
 scalar_t__ TASK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct dl_bw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dl_bw* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sched_dl_entity*) ; 
 struct dl_rq* FUNC7 (struct sched_dl_entity*) ; 
 scalar_t__ FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 scalar_t__ FUNC10 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC11 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct rq*) ; 
 struct rq* FUNC16 (struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct sched_dl_entity*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sched_dl_entity*,struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC19 (struct task_struct*) ; 

__attribute__((used)) static void FUNC20(struct task_struct *p)
{
	struct sched_dl_entity *dl_se = &p->dl;
	struct hrtimer *timer = &dl_se->inactive_timer;
	struct dl_rq *dl_rq = FUNC7(dl_se);
	struct rq *rq = FUNC16(dl_rq);
	s64 zerolag_time;

	/*
	 * If this is a non-deadline task that has been boosted,
	 * do nothing
	 */
	if (dl_se->dl_runtime == 0)
		return;

	if (FUNC6(dl_se))
		return;

	FUNC0(dl_se->dl_non_contending);

	zerolag_time = dl_se->deadline -
		 FUNC3((dl_se->runtime * dl_se->dl_period),
			dl_se->dl_runtime);

	/*
	 * Using relative times instead of the absolute "0-lag time"
	 * allows to simplify the code
	 */
	zerolag_time -= FUNC15(rq);

	/*
	 * If the "0-lag time" already passed, decrease the active
	 * utilization now, instead of starting a timer
	 */
	if ((zerolag_time < 0) || FUNC10(&dl_se->inactive_timer)) {
		if (FUNC8(p))
			FUNC18(dl_se, dl_rq);
		if (!FUNC8(p) || p->state == TASK_DEAD) {
			struct dl_bw *dl_b = FUNC5(FUNC19(p));

			if (p->state == TASK_DEAD)
				FUNC17(&p->dl, &rq->dl);
			FUNC13(&dl_b->lock);
			FUNC2(dl_b, p->dl.dl_bw, FUNC4(FUNC19(p)));
			FUNC1(p);
			FUNC14(&dl_b->lock);
		}

		return;
	}

	dl_se->dl_non_contending = 1;
	FUNC9(p);
	FUNC11(timer, FUNC12(zerolag_time), HRTIMER_MODE_REL_HARD);
}