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

/* Variables and functions */
 int /*<<< orphan*/  EXP_1 ; 
 int /*<<< orphan*/  EXP_15 ; 
 int /*<<< orphan*/  EXP_5 ; 
 long FIXED_1 ; 
 scalar_t__ LOAD_FREQ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * avenrun ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 long FUNC6 () ; 
 int /*<<< orphan*/  calc_load_tasks ; 
 int /*<<< orphan*/  calc_load_update ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC8(unsigned long ticks)
{
	unsigned long sample_window;
	long active, delta;

	sample_window = FUNC0(calc_load_update);
	if (FUNC7(jiffies, sample_window + 10))
		return;

	/*
	 * Fold the 'old' NO_HZ-delta to include all NO_HZ CPUs.
	 */
	delta = FUNC6();
	if (delta)
		FUNC2(delta, &calc_load_tasks);

	active = FUNC3(&calc_load_tasks);
	active = active > 0 ? active * FIXED_1 : 0;

	avenrun[0] = FUNC5(avenrun[0], EXP_1, active);
	avenrun[1] = FUNC5(avenrun[1], EXP_5, active);
	avenrun[2] = FUNC5(avenrun[2], EXP_15, active);

	FUNC1(calc_load_update, sample_window + LOAD_FREQ);

	/*
	 * In case we went to NO_HZ for multiple LOAD_FREQ intervals
	 * catch up in bulk.
	 */
	FUNC4();
}