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
struct page {int dummy; } ;
struct deferred_split {int /*<<< orphan*/  split_queue_lock; int /*<<< orphan*/  split_queue_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct deferred_split* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct page *page)
{
	struct deferred_split *ds_queue = FUNC1(page);
	unsigned long flags;

	FUNC5(&ds_queue->split_queue_lock, flags);
	if (!FUNC3(FUNC4(page))) {
		ds_queue->split_queue_len--;
		FUNC2(FUNC4(page));
	}
	FUNC6(&ds_queue->split_queue_lock, flags);
	FUNC0(page);
}