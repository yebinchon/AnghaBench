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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PG_writeback ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 

void FUNC7(struct page *page)
{
	/*
	 * TestClearPageReclaim could be used here but it is an atomic
	 * operation and overkill in this particular case. Failing to
	 * shuffle a page marked for immediate reclaim is too mild to
	 * justify taking an atomic operation penalty at the end of
	 * ever page writeback.
	 */
	if (FUNC2(page)) {
		FUNC1(page);
		FUNC3(page);
	}

	if (!FUNC5(page))
		FUNC0();

	FUNC4();
	FUNC6(page, PG_writeback);
}