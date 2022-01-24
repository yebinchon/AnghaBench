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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  simple_thread_cnt ; 
 int /*<<< orphan*/  simple_thread_fn ; 
 int /*<<< orphan*/  simple_tsk_fn ; 
 int /*<<< orphan*/  thread_mutex ; 

int FUNC4(void)
{
	FUNC1(&thread_mutex);
	if (simple_thread_cnt++)
		goto out;

	FUNC3("Starting thread for foo_bar_fn\n");
	/*
	 * We shouldn't be able to start a trace when the module is
	 * unloading (there's other locks to prevent that). But
	 * for consistency sake, we still take the thread_mutex.
	 */
	simple_tsk_fn = FUNC0(simple_thread_fn, NULL, "event-sample-fn");
 out:
	FUNC2(&thread_mutex);
	return 0;
}