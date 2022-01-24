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
struct wait_queue_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,struct wait_queue_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry, int state)
{
	unsigned long flags;

	wq_entry->flags |= WQ_FLAG_EXCLUSIVE;
	FUNC3(&wq_head->lock, flags);
	if (FUNC1(&wq_entry->entry))
		FUNC0(wq_head, wq_entry);
	FUNC2(state);
	FUNC4(&wq_head->lock, flags);
}