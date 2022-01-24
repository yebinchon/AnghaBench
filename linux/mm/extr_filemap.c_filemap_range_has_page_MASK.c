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
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  xas ; 
 struct page* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct page*) ; 

bool FUNC6(struct address_space *mapping,
			   loff_t start_byte, loff_t end_byte)
{
	struct page *page;
	FUNC0(xas, &mapping->i_pages, start_byte >> PAGE_SHIFT);
	pgoff_t max = end_byte >> PAGE_SHIFT;

	if (end_byte < start_byte)
		return false;

	FUNC1();
	for (;;) {
		page = FUNC4(&xas, max);
		if (FUNC5(&xas, page))
			continue;
		/* Shadow entries don't count */
		if (FUNC3(page))
			continue;
		/*
		 * We don't need to try to pin this page; we're about to
		 * release the RCU lock anyway.  It is enough to know that
		 * there was a page here recently.
		 */
		break;
	}
	FUNC2();

	return page != NULL;
}