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
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long alloc_highmem ; 
 unsigned long alloc_normal ; 
 int /*<<< orphan*/  copy_bm ; 
 unsigned long FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct page* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static unsigned long FUNC10(void)
{
	unsigned long save, to_free_normal, to_free_highmem, free;

	save = FUNC2();
	if (alloc_normal >= save) {
		to_free_normal = alloc_normal - save;
		save = 0;
	} else {
		to_free_normal = 0;
		save -= alloc_normal;
	}
	save += FUNC3();
	if (alloc_highmem >= save) {
		to_free_highmem = alloc_highmem - save;
	} else {
		to_free_highmem = 0;
		save -= alloc_highmem;
		if (to_free_normal > save)
			to_free_normal -= save;
		else
			to_free_normal = 0;
	}
	free = to_free_normal + to_free_highmem;

	FUNC6(&copy_bm);

	while (to_free_normal > 0 || to_free_highmem > 0) {
		unsigned long pfn = FUNC5(&copy_bm);
		struct page *page = FUNC7(pfn);

		if (FUNC0(page)) {
			if (!to_free_highmem)
				continue;
			to_free_highmem--;
			alloc_highmem--;
		} else {
			if (!to_free_normal)
				continue;
			to_free_normal--;
			alloc_normal--;
		}
		FUNC4(&copy_bm, pfn);
		FUNC8(page);
		FUNC9(page);
		FUNC1(page);
	}

	return free;
}