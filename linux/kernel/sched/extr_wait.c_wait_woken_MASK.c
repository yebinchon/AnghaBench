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
struct wait_queue_entry {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int WQ_FLAG_WOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

long FUNC5(struct wait_queue_entry *wq_entry, unsigned mode, long timeout)
{
	/*
	 * The below executes an smp_mb(), which matches with the full barrier
	 * executed by the try_to_wake_up() in woken_wake_function() such that
	 * either we see the store to wq_entry->flags in woken_wake_function()
	 * or woken_wake_function() sees our store to current->state.
	 */
	FUNC3(mode); /* A */
	if (!(wq_entry->flags & WQ_FLAG_WOKEN) && !FUNC1())
		timeout = FUNC2(timeout);
	FUNC0(TASK_RUNNING);

	/*
	 * The below executes an smp_mb(), which matches with the smp_mb() (C)
	 * in woken_wake_function() such that either we see the wait condition
	 * being true or the store to wq_entry->flags in woken_wake_function()
	 * follows ours in the coherence order.
	 */
	FUNC4(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN); /* B */

	return timeout;
}