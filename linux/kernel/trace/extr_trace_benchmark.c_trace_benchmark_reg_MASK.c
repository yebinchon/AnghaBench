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
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  benchmark_event_kthread ; 
 int /*<<< orphan*/  bm_event_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ok_to_run ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void)
{
	if (!ok_to_run) {
		FUNC3("trace benchmark cannot be started via kernel command line\n");
		return -EBUSY;
	}

	bm_event_thread = FUNC2(benchmark_event_kthread,
				      NULL, "event_benchmark");
	if (FUNC0(bm_event_thread)) {
		FUNC3("trace benchmark failed to create kernel thread\n");
		return FUNC1(bm_event_thread);
	}

	return 0;
}