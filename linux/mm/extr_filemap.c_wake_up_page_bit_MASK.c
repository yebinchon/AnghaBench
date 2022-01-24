#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  entry; int /*<<< orphan*/ * func; int /*<<< orphan*/ * private; } ;
typedef  TYPE_2__ wait_queue_entry_t ;
struct wait_page_key {int bit_nr; scalar_t__ page_match; struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_NORMAL ; 
 int WQ_FLAG_BOOKMARK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct wait_page_key*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct page *page, int bit_nr)
{
	wait_queue_head_t *q = FUNC4(page);
	struct wait_page_key key;
	unsigned long flags;
	wait_queue_entry_t bookmark;

	key.page = page;
	key.bit_nr = bit_nr;
	key.page_match = 0;

	bookmark.flags = 0;
	bookmark.private = NULL;
	bookmark.func = NULL;
	FUNC1(&bookmark.entry);

	FUNC5(&q->lock, flags);
	FUNC2(q, TASK_NORMAL, &key, &bookmark);

	while (bookmark.flags & WQ_FLAG_BOOKMARK) {
		/*
		 * Take a breather from holding the lock,
		 * allow pages that finish wake up asynchronously
		 * to acquire the lock and remove themselves
		 * from wait queue
		 */
		FUNC6(&q->lock, flags);
		FUNC3();
		FUNC5(&q->lock, flags);
		FUNC2(q, TASK_NORMAL, &key, &bookmark);
	}

	/*
	 * It is possible for other pages to have collided on the waitqueue
	 * hash, so in that case check for a page match. That prevents a long-
	 * term waiter
	 *
	 * It is still possible to miss a case here, when we woke page waiters
	 * and removed them from the waitqueue, but there are still other
	 * page waiters.
	 */
	if (!FUNC7(q) || !key.page_match) {
		FUNC0(page);
		/*
		 * It's possible to miss clearing Waiters here, when we woke
		 * our page waiters, but the hashed waitqueue has waiters for
		 * other pages on it.
		 *
		 * That's okay, it's a rare case. The next waker will clear it.
		 */
	}
	FUNC6(&q->lock, flags);
}