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
struct task_struct {int /*<<< orphan*/  cpus_ptr; int /*<<< orphan*/  prio; } ;
struct cpupri_vec {int /*<<< orphan*/  mask; int /*<<< orphan*/  count; } ;
struct cpupri {struct cpupri_vec* pri_to_cpu; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPUPRI_NR_PRIORITIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct cpumask*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct cpupri *cp, struct task_struct *p,
		struct cpumask *lowest_mask)
{
	int idx = 0;
	int task_pri = FUNC2(p->prio);

	FUNC0(task_pri >= CPUPRI_NR_PRIORITIES);

	for (idx = 0; idx < task_pri; idx++) {
		struct cpupri_vec *vec  = &cp->pri_to_cpu[idx];
		int skip = 0;

		if (!FUNC1(&(vec)->count))
			skip = 1;
		/*
		 * When looking at the vector, we need to read the counter,
		 * do a memory barrier, then read the mask.
		 *
		 * Note: This is still all racey, but we can deal with it.
		 *  Ideally, we only want to look at masks that are set.
		 *
		 *  If a mask is not set, then the only thing wrong is that we
		 *  did a little more work than necessary.
		 *
		 *  If we read a zero count but the mask is set, because of the
		 *  memory barriers, that can only happen when the highest prio
		 *  task for a run queue has left the run queue, in which case,
		 *  it will be followed by a pull. If the task we are processing
		 *  fails to find a proper place to go, that pull request will
		 *  pull this task if the run queue is running at a lower
		 *  priority.
		 */
		FUNC6();

		/* Need to do the rmb for every iteration */
		if (skip)
			continue;

		if (FUNC5(p->cpus_ptr, vec->mask) >= nr_cpu_ids)
			continue;

		if (lowest_mask) {
			FUNC3(lowest_mask, p->cpus_ptr, vec->mask);

			/*
			 * We have to ensure that we have at least one bit
			 * still set in the array, since the map could have
			 * been concurrently emptied between the first and
			 * second reads of vec->mask.  If we hit this
			 * condition, simply act as though we never hit this
			 * priority level and continue on.
			 */
			if (FUNC4(lowest_mask) >= nr_cpu_ids)
				continue;
		}

		return 1;
	}

	return 0;
}