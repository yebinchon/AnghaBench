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
struct page {int /*<<< orphan*/ * mapping; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned int) ; 

__attribute__((used)) static struct page *FUNC7(gfp_t gfp_mask, unsigned int order)
{
	struct page *pages;

	if (FUNC4(current))
		return NULL;
	pages = FUNC1(gfp_mask & ~__GFP_ZERO, order);
	if (pages) {
		unsigned int count, i;

		pages->mapping = NULL;
		FUNC6(pages, order);
		count = 1 << order;
		for (i = 0; i < count; i++)
			FUNC0(pages + i);

		FUNC2(FUNC5(pages), count,
					    gfp_mask);

		if (gfp_mask & __GFP_ZERO)
			for (i = 0; i < count; i++)
				FUNC3(pages + i);
	}

	return pages;
}