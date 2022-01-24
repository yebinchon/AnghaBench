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
struct perf_event_attr {int /*<<< orphan*/  sample_period; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct perf_event* FUNC3 (struct perf_event_attr*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  watchdog_ev ; 
 int /*<<< orphan*/  watchdog_overflow_callback ; 
 int /*<<< orphan*/  watchdog_thresh ; 
 struct perf_event_attr wd_hw_attr ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned int cpu = FUNC5();
	struct perf_event_attr *wd_attr;
	struct perf_event *evt;

	wd_attr = &wd_hw_attr;
	wd_attr->sample_period = FUNC2(watchdog_thresh);

	/* Try to register using hardware perf events */
	evt = FUNC3(wd_attr, cpu, NULL,
					       watchdog_overflow_callback, NULL);
	if (FUNC0(evt)) {
		FUNC4("Perf event create on CPU %d failed with %ld\n", cpu,
			 FUNC1(evt));
		return FUNC1(evt);
	}
	FUNC6(watchdog_ev, evt);
	return 0;
}