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
struct address_space {scalar_t__ host; int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct address_space* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC14(struct page *page)
{
	FUNC8(page);
	if (!FUNC3(page)) {
		struct address_space *mapping = FUNC10(page);
		unsigned long flags;

		if (!mapping) {
			FUNC11(page);
			return 1;
		}

		FUNC12(&mapping->i_pages, flags);
		FUNC0(FUNC10(page) != mapping);
		FUNC4(!FUNC1(page) && !FUNC2(page));
		FUNC7(page, mapping);
		FUNC6(&mapping->i_pages, FUNC9(page),
				   PAGECACHE_TAG_DIRTY);
		FUNC13(&mapping->i_pages, flags);
		FUNC11(page);

		if (mapping->host) {
			/* !PageAnon && !swapper_space */
			FUNC5(mapping->host, I_DIRTY_PAGES);
		}
		return 1;
	}
	FUNC11(page);
	return 0;
}