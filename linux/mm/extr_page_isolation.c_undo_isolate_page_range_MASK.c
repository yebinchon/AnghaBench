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
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 struct page* FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int) ; 

void FUNC5(unsigned long start_pfn, unsigned long end_pfn,
			    unsigned migratetype)
{
	unsigned long pfn;
	struct page *page;

	FUNC0(!FUNC1(start_pfn, pageblock_nr_pages));
	FUNC0(!FUNC1(end_pfn, pageblock_nr_pages));

	for (pfn = start_pfn;
	     pfn < end_pfn;
	     pfn += pageblock_nr_pages) {
		page = FUNC2(pfn, pageblock_nr_pages);
		if (!page || !FUNC3(page))
			continue;
		FUNC4(page, migratetype);
	}
}