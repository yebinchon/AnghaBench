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
typedef  int u64 ;
struct task_struct {scalar_t__ in_iowait; } ;
struct TYPE_2__ {int /*<<< orphan*/  iowait_count; int /*<<< orphan*/  iowait_sum; int /*<<< orphan*/  sum_sleep_runtime; int /*<<< orphan*/  block_start; int /*<<< orphan*/  block_max; int /*<<< orphan*/  sleep_start; int /*<<< orphan*/  sleep_max; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ SLEEP_PROFILING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int,int) ; 
 scalar_t__ FUNC4 (struct sched_entity*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 scalar_t__ prof_on ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC11 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*,int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static inline void
FUNC16(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	struct task_struct *tsk = NULL;
	u64 sleep_start, block_start;

	if (!FUNC9())
		return;

	sleep_start = FUNC10(se->statistics.sleep_start);
	block_start = FUNC10(se->statistics.block_start);

	if (FUNC4(se))
		tsk = FUNC11(se);

	if (sleep_start) {
		u64 delta = FUNC7(FUNC8(cfs_rq)) - sleep_start;

		if ((s64)delta < 0)
			delta = 0;

		if (FUNC15(delta > FUNC10(se->statistics.sleep_max)))
			FUNC2(se->statistics.sleep_max, delta);

		FUNC2(se->statistics.sleep_start, 0);
		FUNC0(se->statistics.sum_sleep_runtime, delta);

		if (tsk) {
			FUNC3(tsk, delta >> 10, 1);
			FUNC14(tsk, delta);
		}
	}
	if (block_start) {
		u64 delta = FUNC7(FUNC8(cfs_rq)) - block_start;

		if ((s64)delta < 0)
			delta = 0;

		if (FUNC15(delta > FUNC10(se->statistics.block_max)))
			FUNC2(se->statistics.block_max, delta);

		FUNC2(se->statistics.block_start, 0);
		FUNC0(se->statistics.sum_sleep_runtime, delta);

		if (tsk) {
			if (tsk->in_iowait) {
				FUNC0(se->statistics.iowait_sum, delta);
				FUNC1(se->statistics.iowait_count);
				FUNC13(tsk, delta);
			}

			FUNC12(tsk, delta);

			/*
			 * Blocking time is in units of nanosecs, so shift by
			 * 20 to get a milliseconds-range estimation of the
			 * amount of time that the task spent sleeping:
			 */
			if (FUNC15(prof_on == SLEEP_PROFILING)) {
				FUNC6(SLEEP_PROFILING,
						(void *)FUNC5(tsk),
						delta >> 20);
			}
			FUNC3(tsk, delta >> 10, 0);
		}
	}
}