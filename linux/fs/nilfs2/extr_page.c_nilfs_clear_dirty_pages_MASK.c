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
struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 unsigned int FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (struct pagevec*) ; 
 scalar_t__ FUNC5 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct address_space *mapping, bool silent)
{
	struct pagevec pvec;
	unsigned int i;
	pgoff_t index = 0;

	FUNC4(&pvec);

	while (FUNC5(&pvec, mapping, &index,
					PAGECACHE_TAG_DIRTY)) {
		for (i = 0; i < FUNC3(&pvec); i++) {
			struct page *page = pvec.pages[i];

			FUNC1(page);
			FUNC2(page, silent);
			FUNC7(page);
		}
		FUNC6(&pvec);
		FUNC0();
	}
}