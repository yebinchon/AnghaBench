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
 int GFP_TRANSHUGE ; 
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THP_ZERO_PAGE_ALLOC ; 
 int /*<<< orphan*/  THP_ZERO_PAGE_ALLOC_FAILED ; 
 int __GFP_MOVABLE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  huge_zero_page ; 
 int /*<<< orphan*/  huge_zero_refcount ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static struct page *FUNC11(void)
{
	struct page *zero_page;
retry:
	if (FUNC8(FUNC3(&huge_zero_refcount)))
		return FUNC0(huge_zero_page);

	zero_page = FUNC2((GFP_TRANSHUGE | __GFP_ZERO) & ~__GFP_MOVABLE,
			HPAGE_PMD_ORDER);
	if (!zero_page) {
		FUNC7(THP_ZERO_PAGE_ALLOC_FAILED);
		return NULL;
	}
	FUNC7(THP_ZERO_PAGE_ALLOC);
	FUNC9();
	if (FUNC5(&huge_zero_page, NULL, zero_page)) {
		FUNC10();
		FUNC1(zero_page, FUNC6(zero_page));
		goto retry;
	}

	/* We take additional reference here. It will be put back by shrinker */
	FUNC4(&huge_zero_refcount, 2);
	FUNC10();
	return FUNC0(huge_zero_page);
}