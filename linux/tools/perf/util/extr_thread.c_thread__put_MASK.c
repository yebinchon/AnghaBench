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
struct thread {int /*<<< orphan*/  node; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void FUNC4(struct thread *thread)
{
	if (thread && FUNC2(&thread->refcnt)) {
		/*
		 * Remove it from the dead threads list, as last reference is
		 * gone, if it is in a dead threads list.
		 *
		 * We may not be there anymore if say, the machine where it was
		 * stored was already deleted, so we already removed it from
		 * the dead threads and some other piece of code still keeps a
		 * reference.
		 *
		 * This is what 'perf sched' does and finally drops it in
		 * perf_sched__lat(), where it calls perf_sched__read_events(),
		 * that processes the events by creating a session and deleting
		 * it, which ends up destroying the list heads for the dead
		 * threads, but before it does that it removes all threads from
		 * it using list_del_init().
		 *
		 * So we need to check here if it is in a dead threads list and
		 * if so, remove it before finally deleting the thread, to avoid
		 * an use after free situation.
		 */
		if (!FUNC1(&thread->node))
			FUNC0(&thread->node);
		FUNC3(thread);
	}
}