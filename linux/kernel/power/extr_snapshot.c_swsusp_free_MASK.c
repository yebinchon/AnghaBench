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
 unsigned long BM_END_OF_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ alloc_highmem ; 
 scalar_t__ alloc_normal ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/  forbidden_pages_map ; 
 int /*<<< orphan*/  free_pages_map ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ nr_copy_pages ; 
 scalar_t__ nr_meta_pages ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct page* FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int /*<<< orphan*/ * restore_pblist ; 

void FUNC9(void)
{
	unsigned long fb_pfn, fr_pfn;

	if (!forbidden_pages_map || !free_pages_map)
		goto out;

	FUNC5(forbidden_pages_map);
	FUNC5(free_pages_map);

loop:
	fr_pfn = FUNC4(free_pages_map);
	fb_pfn = FUNC4(forbidden_pages_map);

	/*
	 * Find the next bit set in both bitmaps. This is guaranteed to
	 * terminate when fb_pfn == fr_pfn == BM_END_OF_MAP.
	 */
	do {
		if (fb_pfn < fr_pfn)
			fb_pfn = FUNC4(forbidden_pages_map);
		if (fr_pfn < fb_pfn)
			fr_pfn = FUNC4(free_pages_map);
	} while (fb_pfn != fr_pfn);

	if (fr_pfn != BM_END_OF_MAP && FUNC8(fr_pfn)) {
		struct page *page = FUNC7(fr_pfn);

		FUNC3(forbidden_pages_map);
		FUNC3(free_pages_map);
		FUNC2(FUNC6(page));
		FUNC0(page);
		goto loop;
	}

out:
	nr_copy_pages = 0;
	nr_meta_pages = 0;
	restore_pblist = NULL;
	buffer = NULL;
	alloc_normal = 0;
	alloc_highmem = 0;
	FUNC1();
}