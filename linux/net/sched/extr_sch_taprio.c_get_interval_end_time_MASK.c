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
struct sched_gate_list {int /*<<< orphan*/  base_time; int /*<<< orphan*/  cycle_time_extension; scalar_t__ cycle_time; } ;
struct sched_entry {scalar_t__ interval; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sched_gate_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC5(struct sched_gate_list *sched,
				     struct sched_gate_list *admin,
				     struct sched_entry *entry,
				     ktime_t intv_start)
{
	s32 cycle_elapsed = FUNC0(sched, intv_start);
	ktime_t intv_end, cycle_ext_end, cycle_end;

	cycle_end = FUNC2(intv_start, sched->cycle_time - cycle_elapsed);
	intv_end = FUNC2(intv_start, entry->interval);
	cycle_ext_end = FUNC1(cycle_end, sched->cycle_time_extension);

	if (FUNC4(intv_end, cycle_end))
		return intv_end;
	else if (admin && admin != sched &&
		 FUNC3(admin->base_time, cycle_end) &&
		 FUNC4(admin->base_time, cycle_ext_end))
		return admin->base_time;
	else
		return cycle_end;
}