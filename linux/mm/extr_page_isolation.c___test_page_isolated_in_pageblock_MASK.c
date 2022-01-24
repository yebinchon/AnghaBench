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
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC5(unsigned long pfn, unsigned long end_pfn,
				  bool skip_hwpoisoned_pages)
{
	struct page *page;

	while (pfn < end_pfn) {
		if (!FUNC4(pfn)) {
			pfn++;
			continue;
		}
		page = FUNC3(pfn);
		if (FUNC0(page))
			/*
			 * If the page is on a free list, it has to be on
			 * the correct MIGRATE_ISOLATE freelist. There is no
			 * simple way to verify that as VM_BUG_ON(), though.
			 */
			pfn += 1 << FUNC2(page);
		else if (skip_hwpoisoned_pages && FUNC1(page))
			/* A HWPoisoned page cannot be also PageBuddy */
			pfn++;
		else
			break;
	}

	return pfn;
}