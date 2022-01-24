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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ simple_thread_cnt ; 
 int /*<<< orphan*/ * simple_tsk_fn ; 
 int /*<<< orphan*/  thread_mutex ; 

void FUNC4(void)
{
	FUNC1(&thread_mutex);
	if (--simple_thread_cnt)
		goto out;

	FUNC3("Killing thread for foo_bar_fn\n");
	if (simple_tsk_fn)
		FUNC0(simple_tsk_fn);
	simple_tsk_fn = NULL;
 out:
	FUNC2(&thread_mutex);
}