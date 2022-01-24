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
 int /*<<< orphan*/  CONFIG_GENERIC_SCHED_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nmi_count ; 
 scalar_t__ nmi_cpu ; 
 int /*<<< orphan*/  nmi_total_ts ; 
 scalar_t__ nmi_ts_start ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(bool enter)
{
	if (FUNC1() != nmi_cpu)
		return;

	/*
	 * Currently trace_clock_local() calls sched_clock() and the
	 * generic version is not NMI safe.
	 */
	if (!FUNC0(CONFIG_GENERIC_SCHED_CLOCK)) {
		if (enter)
			nmi_ts_start = FUNC2();
		else
			nmi_total_ts += FUNC2() - nmi_ts_start;
	}

	if (enter)
		nmi_count++;
}