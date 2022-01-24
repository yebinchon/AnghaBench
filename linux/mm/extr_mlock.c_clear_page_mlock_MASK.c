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

/* Variables and functions */
 int /*<<< orphan*/  NR_MLOCK ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGCLEARED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGSTRANDED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct page *page)
{
	if (!FUNC1(page))
		return;

	FUNC5(FUNC6(page), NR_MLOCK,
			    -FUNC3(page));
	FUNC2(UNEVICTABLE_PGCLEARED);
	/*
	 * The previous TestClearPageMlocked() corresponds to the smp_mb()
	 * in __pagevec_lru_add_fn().
	 *
	 * See __pagevec_lru_add_fn for more explanation.
	 */
	if (!FUNC4(page)) {
		FUNC7(page);
	} else {
		/*
		 * We lost the race. the page already moved to evictable list.
		 */
		if (FUNC0(page))
			FUNC2(UNEVICTABLE_PGSTRANDED);
	}
}