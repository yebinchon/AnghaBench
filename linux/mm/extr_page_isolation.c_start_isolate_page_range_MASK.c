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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 struct page* FUNC2 (unsigned long,scalar_t__) ; 
 scalar_t__ pageblock_nr_pages ; 
 struct page* FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct page*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int) ; 

int FUNC6(unsigned long start_pfn, unsigned long end_pfn,
			     unsigned migratetype, int flags)
{
	unsigned long pfn;
	unsigned long undo_pfn;
	struct page *page;
	int nr_isolate_pageblock = 0;

	FUNC0(!FUNC1(start_pfn, pageblock_nr_pages));
	FUNC0(!FUNC1(end_pfn, pageblock_nr_pages));

	for (pfn = start_pfn;
	     pfn < end_pfn;
	     pfn += pageblock_nr_pages) {
		page = FUNC2(pfn, pageblock_nr_pages);
		if (page) {
			if (FUNC4(page, migratetype, flags)) {
				undo_pfn = pfn;
				goto undo;
			}
			nr_isolate_pageblock++;
		}
	}
	return nr_isolate_pageblock;
undo:
	for (pfn = start_pfn;
	     pfn < undo_pfn;
	     pfn += pageblock_nr_pages) {
		struct page *page = FUNC3(pfn);
		if (!page)
			continue;
		FUNC5(page, migratetype);
	}

	return -EBUSY;
}