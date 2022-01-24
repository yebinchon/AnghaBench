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
struct wait_queue_head {int /*<<< orphan*/  lock; } ;
struct wait_queue_entry {int flags; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 long ERESTARTSYS ; 
 int WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct wait_queue_head*,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

long FUNC8(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry, int state)
{
	unsigned long flags;
	long ret = 0;

	FUNC6(&wq_head->lock, flags);
	if (FUNC5(state, current)) {
		/*
		 * Exclusive waiter must not fail if it was selected by wakeup,
		 * it should "consume" the condition we were waiting for.
		 *
		 * The caller will recheck the condition and return success if
		 * we were already woken up, we can not miss the event because
		 * wakeup locks/unlocks the same wq_head->lock.
		 *
		 * But we need to ensure that set-condition + wakeup after that
		 * can't see us, it should wake up another exclusive waiter if
		 * we fail.
		 */
		FUNC2(&wq_entry->entry);
		ret = -ERESTARTSYS;
	} else {
		if (FUNC3(&wq_entry->entry)) {
			if (wq_entry->flags & WQ_FLAG_EXCLUSIVE)
				FUNC1(wq_head, wq_entry);
			else
				FUNC0(wq_head, wq_entry);
		}
		FUNC4(state);
	}
	FUNC7(&wq_head->lock, flags);

	return ret;
}