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
struct zone {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zone*,struct page*,struct page*,int,int*) ; 
 unsigned long FUNC1 (struct page*) ; 
 int pageblock_nr_pages ; 
 struct page* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,unsigned long) ; 

int FUNC4(struct zone *zone, struct page *page,
				int migratetype, int *num_movable)
{
	unsigned long start_pfn, end_pfn;
	struct page *start_page, *end_page;

	if (num_movable)
		*num_movable = 0;

	start_pfn = FUNC1(page);
	start_pfn = start_pfn & ~(pageblock_nr_pages-1);
	start_page = FUNC2(start_pfn);
	end_page = start_page + pageblock_nr_pages - 1;
	end_pfn = start_pfn + pageblock_nr_pages - 1;

	/* Do not cross zone boundaries */
	if (!FUNC3(zone, start_pfn))
		start_page = page;
	if (!FUNC3(zone, end_pfn))
		return 0;

	return FUNC0(zone, start_page, end_page, migratetype,
								num_movable);
}