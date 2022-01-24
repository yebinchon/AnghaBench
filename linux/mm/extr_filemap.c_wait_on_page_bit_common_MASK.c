#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct TYPE_10__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  func; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ wait_queue_entry_t ;
struct wait_page_queue {int bit_nr; struct page* page; TYPE_2__ wait; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  enum behavior { ____Placeholder_behavior } behavior ;

/* Variables and functions */
 int DROP ; 
 int EINTR ; 
 int EXCLUSIVE ; 
 int PG_locked ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int SHARED ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 
 int FUNC20 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wake_page_function ; 

__attribute__((used)) static inline int FUNC21(wait_queue_head_t *q,
	struct page *page, int bit_nr, int state, enum behavior behavior)
{
	struct wait_page_queue wait_page;
	wait_queue_entry_t *wait = &wait_page.wait;
	bool bit_is_set;
	bool thrashing = false;
	bool delayacct = false;
	unsigned long pflags;
	int ret = 0;

	if (bit_nr == PG_locked &&
	    !FUNC1(page) && FUNC2(page)) {
		if (!FUNC0(page)) {
			FUNC6();
			delayacct = true;
		}
		FUNC12(&pflags);
		thrashing = true;
	}

	FUNC8(wait);
	wait->flags = behavior == EXCLUSIVE ? WQ_FLAG_EXCLUSIVE : 0;
	wait->func = wake_page_function;
	wait_page.page = page;
	wait_page.bit_nr = bit_nr;

	for (;;) {
		FUNC17(&q->lock);

		if (FUNC10(FUNC11(&wait->entry))) {
			FUNC4(q, wait);
			FUNC3(page);
		}

		FUNC15(state);

		FUNC18(&q->lock);

		bit_is_set = FUNC20(bit_nr, &page->flags);
		if (behavior == DROP)
			FUNC14(page);

		if (FUNC10(bit_is_set))
			FUNC9();

		if (behavior == EXCLUSIVE) {
			if (!FUNC19(bit_nr, &page->flags))
				break;
		} else if (behavior == SHARED) {
			if (!FUNC20(bit_nr, &page->flags))
				break;
		}

		if (FUNC16(state, current)) {
			ret = -EINTR;
			break;
		}

		if (behavior == DROP) {
			/*
			 * We can no longer safely access page->flags:
			 * even if CONFIG_MEMORY_HOTREMOVE is not enabled,
			 * there is a risk of waiting forever on a page reused
			 * for something that keeps it locked indefinitely.
			 * But best check for -EINTR above before breaking.
			 */
			break;
		}
	}

	FUNC7(q, wait);

	if (thrashing) {
		if (delayacct)
			FUNC5();
		FUNC13(&pflags);
	}

	/*
	 * A signal could leave PageWaiters set. Clearing it here if
	 * !waitqueue_active would be possible (by open-coding finish_wait),
	 * but still fail to catch it in the case of wait hash collision. We
	 * already can fail to clear wait hash collision cases, so don't
	 * bother with signals either.
	 */

	return ret;
}