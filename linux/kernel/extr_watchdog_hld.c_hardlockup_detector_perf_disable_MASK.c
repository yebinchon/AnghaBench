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
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dead_event ; 
 int /*<<< orphan*/  dead_events_mask ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct perf_event* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  watchdog_cpus ; 
 int /*<<< orphan*/  watchdog_ev ; 

void FUNC6(void)
{
	struct perf_event *event = FUNC4(watchdog_ev);

	if (event) {
		FUNC2(event);
		FUNC5(watchdog_ev, NULL);
		FUNC5(dead_event, event);
		FUNC1(FUNC3(), &dead_events_mask);
		FUNC0(&watchdog_cpus);
	}
}