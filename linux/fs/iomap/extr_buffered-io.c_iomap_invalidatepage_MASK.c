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
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

void
FUNC4(struct page *page, unsigned int offset, unsigned int len)
{
	/*
	 * If we are invalidating the entire page, clear the dirty state from it
	 * and release it to avoid unnecessary buildup of the LRU.
	 */
	if (offset == 0 && len == PAGE_SIZE) {
		FUNC1(FUNC0(page));
		FUNC2(page);
		FUNC3(page);
	}
}