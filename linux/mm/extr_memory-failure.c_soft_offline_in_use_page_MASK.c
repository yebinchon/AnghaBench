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
 int EBUSY ; 
 int MIGRATE_ISOLATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,int) ; 
 struct page* FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int FUNC11 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct page *page, int flags)
{
	int ret;
	int mt;
	struct page *hpage = FUNC4(page);

	if (!FUNC1(page) && FUNC2(hpage)) {
		FUNC6(page);
		if (!FUNC0(page) || FUNC13(FUNC12(page))) {
			FUNC14(page);
			if (!FUNC0(page))
				FUNC8("soft offline: %#lx: non anonymous thp\n", FUNC7(page));
			else
				FUNC8("soft offline: %#lx: thp split failed\n", FUNC7(page));
			FUNC9(page);
			return -EBUSY;
		}
		FUNC14(page);
	}

	/*
	 * Setting MIGRATE_ISOLATE here ensures that the page will be linked
	 * to free list immediately (not via pcplist) when released after
	 * successful page migration. Otherwise we can't guarantee that the
	 * page is really free after put_page() returns, so
	 * set_hwpoison_free_buddy_page() highly likely fails.
	 */
	mt = FUNC5(page);
	FUNC10(page, MIGRATE_ISOLATE);
	if (FUNC1(page))
		ret = FUNC11(page, flags);
	else
		ret = FUNC3(page, flags);
	FUNC10(page, mt);
	return ret;
}