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
struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pagevec*) ; 
 int FUNC3 (struct pagevec*,struct address_space*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct address_space *mapping,
				     loff_t start_byte, loff_t end_byte)
{
	pgoff_t index = start_byte >> PAGE_SHIFT;
	pgoff_t end = end_byte >> PAGE_SHIFT;
	struct pagevec pvec;
	int nr_pages;

	if (end_byte < start_byte)
		return;

	FUNC2(&pvec);
	while (index <= end) {
		unsigned i;

		nr_pages = FUNC3(&pvec, mapping, &index,
				end, PAGECACHE_TAG_WRITEBACK);
		if (!nr_pages)
			break;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			FUNC5(page);
			FUNC0(page);
		}
		FUNC4(&pvec);
		FUNC1();
	}
}