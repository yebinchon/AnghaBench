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
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 scalar_t__ FUNC21 (struct page*) ; 
 scalar_t__ FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,struct page*) ; 
 int FUNC28 (struct page*,int) ; 
 scalar_t__ FUNC29 (struct page*) ; 
 scalar_t__ FUNC30 (struct page*) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct page*) ; 

void FUNC34(struct page *newpage, struct page *page)
{
	int cpupid;

	if (FUNC4(page))
		FUNC15(newpage);
	if (FUNC6(page))
		FUNC17(newpage);
	if (FUNC9(page))
		FUNC19(newpage);
	if (FUNC21(page)) {
		FUNC23(FUNC8(page), page);
		FUNC12(newpage);
	} else if (FUNC22(page))
		FUNC18(newpage);
	if (FUNC10(page))
		FUNC20(newpage);
	if (FUNC2(page))
		FUNC13(newpage);
	if (FUNC5(page))
		FUNC16(newpage);

	/* Move dirty on pages not done by migrate_page_move_mapping() */
	if (FUNC3(page))
		FUNC14(newpage);

	if (FUNC30(page))
		FUNC33(newpage);
	if (FUNC29(page))
		FUNC31(newpage);

	/*
	 * Copy NUMA information to the new page, to prevent over-eager
	 * future migrations of this same page.
	 */
	cpupid = FUNC28(page, -1);
	FUNC28(newpage, cpupid);

	FUNC26(newpage, page);
	/*
	 * Please do not reorder this without considering how mm/ksm.c's
	 * get_ksm_page() depends upon ksm_migrate_page() and PageSwapCache().
	 */
	if (FUNC7(page))
		FUNC1(page);
	FUNC0(page);
	FUNC32(page, 0);

	/*
	 * If any waiters have accumulated on the new page then
	 * wake them up.
	 */
	if (FUNC11(newpage))
		FUNC25(newpage);

	FUNC24(page, newpage);

	FUNC27(page, newpage);
}