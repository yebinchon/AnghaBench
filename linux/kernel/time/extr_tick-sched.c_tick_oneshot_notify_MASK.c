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
struct tick_sched {int /*<<< orphan*/  check_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tick_sched* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_cpu_sched ; 

void FUNC2(void)
{
	struct tick_sched *ts = FUNC1(&tick_cpu_sched);

	FUNC0(0, &ts->check_clocks);
}