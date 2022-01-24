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
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int minimum_order ; 
 struct page* FUNC2 (unsigned long) ; 

int FUNC3(unsigned long start_pfn, unsigned long end_pfn)
{
	unsigned long pfn;
	struct page *page;
	int rc = 0;

	if (!FUNC1())
		return rc;

	for (pfn = start_pfn; pfn < end_pfn; pfn += 1 << minimum_order) {
		page = FUNC2(pfn);
		rc = FUNC0(page);
		if (rc)
			break;
	}

	return rc;
}