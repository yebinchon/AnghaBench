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
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callchain_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_callchain_events ; 
 int sysctl_perf_event_max_stack ; 

int FUNC6(int event_max_stack)
{
	int err = 0;
	int count;

	FUNC4(&callchain_mutex);

	count = FUNC3(&nr_callchain_events);
	if (FUNC0(count < 1)) {
		err = -EINVAL;
		goto exit;
	}

	/*
	 * If requesting per event more than the global cap,
	 * return a different error to help userspace figure
	 * this out.
	 *
	 * And also do it here so that we have &callchain_mutex held.
	 */
	if (event_max_stack > sysctl_perf_event_max_stack) {
		err = -EOVERFLOW;
		goto exit;
	}

	if (count == 1)
		err = FUNC1();
exit:
	if (err)
		FUNC2(&nr_callchain_events);

	FUNC5(&callchain_mutex);

	return err;
}