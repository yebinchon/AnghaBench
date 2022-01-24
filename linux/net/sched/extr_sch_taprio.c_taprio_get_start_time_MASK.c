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
struct taprio_sched {int dummy; } ;
struct sched_gate_list {int cycle_time; } ;
struct Qdisc {int dummy; } ;
typedef  int s64 ;
typedef  int ktime_t ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct taprio_sched* FUNC5 (struct Qdisc*) ; 
 int FUNC6 (struct sched_gate_list*) ; 
 int FUNC7 (struct taprio_sched*) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch,
				 struct sched_gate_list *sched,
				 ktime_t *start)
{
	struct taprio_sched *q = FUNC5(sch);
	ktime_t now, base, cycle;
	s64 n;

	base = FUNC6(sched);
	now = FUNC7(q);

	if (FUNC3(base, now)) {
		*start = base;
		return 0;
	}

	cycle = sched->cycle_time;

	/* The qdisc is expected to have at least one sched_entry.  Moreover,
	 * any entry must have 'interval' > 0. Thus if the cycle time is zero,
	 * something went really wrong. In that case, we should warn about this
	 * inconsistent state and return error.
	 */
	if (FUNC0(!cycle))
		return -EFAULT;

	/* Schedule the start time for the beginning of the next
	 * cycle.
	 */
	n = FUNC1(FUNC4(now, base), cycle);
	*start = FUNC2(base, (n + 1) * cycle);
	return 0;
}