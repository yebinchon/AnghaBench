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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int __GFP_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,struct address_space*,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,void*) ; 

int FUNC8(struct page *page, struct address_space *mapping,
				pgoff_t offset, gfp_t gfp_mask)
{
	void *shadow = NULL;
	int ret;

	FUNC3(page);
	ret = FUNC4(page, mapping, offset,
					 gfp_mask, &shadow);
	if (FUNC6(ret))
		FUNC2(page);
	else {
		/*
		 * The page might have been evicted from cache only
		 * recently, in which case it should be activated like
		 * any other repeatedly accessed page.
		 * The exception is pages getting rewritten; evicting other
		 * data from the working set, only to cache data that will
		 * get overwritten with something else, is a waste of memory.
		 */
		FUNC1(FUNC0(page));
		if (!(gfp_mask & __GFP_WRITE) && shadow)
			FUNC7(page, shadow);
		FUNC5(page);
	}
	return ret;
}