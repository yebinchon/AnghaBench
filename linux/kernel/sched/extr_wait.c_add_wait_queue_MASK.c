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
struct wait_queue_entry {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry)
{
	unsigned long flags;

	wq_entry->flags &= ~WQ_FLAG_EXCLUSIVE;
	FUNC1(&wq_head->lock, flags);
	FUNC0(wq_head, wq_entry);
	FUNC2(&wq_head->lock, flags);
}