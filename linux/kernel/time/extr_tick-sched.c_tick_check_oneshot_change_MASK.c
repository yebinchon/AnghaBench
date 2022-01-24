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
struct tick_sched {scalar_t__ nohz_mode; int /*<<< orphan*/  check_clocks; } ;

/* Variables and functions */
 scalar_t__ NOHZ_MODE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tick_sched* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_cpu_sched ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int allow_nohz)
{
	struct tick_sched *ts = FUNC1(&tick_cpu_sched);

	if (!FUNC0(0, &ts->check_clocks))
		return 0;

	if (ts->nohz_mode != NOHZ_MODE_INACTIVE)
		return 0;

	if (!FUNC4() || !FUNC2())
		return 0;

	if (!allow_nohz)
		return 1;

	FUNC3();
	return 0;
}