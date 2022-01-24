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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static void FUNC12(struct page *page, int err)
{
	if (!page)
		return;

	if (FUNC6(FUNC10(page)) && !FUNC2(page)) {
		/*
		 * For b-tree node pages, this function may be called twice
		 * or more because they might be split in a segment.
		 */
		if (FUNC1(page)) {
			/*
			 * For pages holding split b-tree node buffers, dirty
			 * flag on the buffers may be cleared discretely.
			 * In that case, the page is once redirtied for
			 * remaining buffers, and it must be cancelled if
			 * all the buffers get cleaned later.
			 */
			FUNC8(page);
			if (FUNC9(page))
				FUNC4(page);
			FUNC11(page);
		}
		return;
	}

	if (!err) {
		if (!FUNC9(page))
			FUNC5(page);
		FUNC0(page);
	} else {
		FUNC5(page);
		FUNC3(page);
	}

	FUNC7(page);
}