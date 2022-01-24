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
struct page {int units; void* freelist; } ;
struct list_head {int dummy; } ;
typedef  int slobidx_t ;
typedef  void slob_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int SLOB_BREAK1 ; 
 int SLOB_BREAK2 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct list_head free_slob_large ; 
 struct list_head free_slob_medium ; 
 struct list_head free_slob_small ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  slob_lock ; 
 void* FUNC10 (void*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 struct page* FUNC16 (void*) ; 

__attribute__((used)) static void FUNC17(void *block, int size)
{
	struct page *sp;
	slob_t *prev, *next, *b = (slob_t *)block;
	slobidx_t units;
	unsigned long flags;
	struct list_head *slob_list;

	if (FUNC15(FUNC2(block)))
		return;
	FUNC0(!size);

	sp = FUNC16(block);
	units = FUNC1(size);

	FUNC13(&slob_lock, flags);

	if (sp->units + units == FUNC1(PAGE_SIZE)) {
		/* Go directly to page allocator. Do not pass slob allocator */
		if (FUNC11(sp))
			FUNC4(sp);
		FUNC14(&slob_lock, flags);
		FUNC3(sp);
		FUNC5(sp);
		FUNC8(b, 0);
		return;
	}

	if (!FUNC11(sp)) {
		/* This slob page is about to become partially free. Easy! */
		sp->units = units;
		sp->freelist = b;
		FUNC6(b, units,
			(void *)((unsigned long)(b +
					FUNC1(PAGE_SIZE)) & PAGE_MASK));
		if (size < SLOB_BREAK1)
			slob_list = &free_slob_small;
		else if (size < SLOB_BREAK2)
			slob_list = &free_slob_medium;
		else
			slob_list = &free_slob_large;
		FUNC7(sp, slob_list);
		goto out;
	}

	/*
	 * Otherwise the page is already partially free, so find reinsertion
	 * point.
	 */
	sp->units += units;

	if (b < (slob_t *)sp->freelist) {
		if (b + units == sp->freelist) {
			units += FUNC12(sp->freelist);
			sp->freelist = FUNC10(sp->freelist);
		}
		FUNC6(b, units, sp->freelist);
		sp->freelist = b;
	} else {
		prev = sp->freelist;
		next = FUNC10(prev);
		while (b > next) {
			prev = next;
			next = FUNC10(prev);
		}

		if (!FUNC9(prev) && b + units == next) {
			units += FUNC12(next);
			FUNC6(b, units, FUNC10(next));
		} else
			FUNC6(b, units, next);

		if (prev + FUNC12(prev) == b) {
			units = FUNC12(b) + FUNC12(prev);
			FUNC6(prev, units, FUNC10(b));
		} else
			FUNC6(prev, FUNC12(prev), b);
	}
out:
	FUNC14(&slob_lock, flags);
}