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
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/ * mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {scalar_t__* surplus_huge_pages_node; int /*<<< orphan*/  surplus_huge_pages; int /*<<< orphan*/  resv_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct hstate*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct hstate*) ; 
 scalar_t__ FUNC9 (struct hugepage_subpool*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct hstate* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct hstate*,struct page*) ; 

void FUNC22(struct page *page)
{
	/*
	 * Can't pass hstate in here because it is called from the
	 * compound page destructor.
	 */
	struct hstate *h = FUNC13(page);
	int nid = FUNC16(page);
	struct hugepage_subpool *spool =
		(struct hugepage_subpool *)FUNC15(page);
	bool restore_reserve;

	FUNC4(FUNC12(page), page);
	FUNC4(FUNC14(page), page);

	FUNC18(page, 0);
	page->mapping = NULL;
	restore_reserve = FUNC3(page);
	FUNC1(page);

	/*
	 * If PagePrivate() was set on page, page allocation consumed a
	 * reservation.  If the page was associated with a subpool, there
	 * would have been a page reserved in the subpool before allocation
	 * via hugepage_subpool_get_pages().  Since we are 'restoring' the
	 * reservtion, do not call hugepage_subpool_put_pages() as this will
	 * remove the reserved page from the subpool.
	 */
	if (!restore_reserve) {
		/*
		 * A return code of zero implies that the subpool will be
		 * under its minimum size if the reservation is not restored
		 * after page is free.  Therefore, force restore_reserve
		 * operation.
		 */
		if (FUNC9(spool, 1) == 0)
			restore_reserve = true;
	}

	FUNC19(&hugetlb_lock);
	FUNC6(page);
	FUNC10(FUNC8(h),
				     FUNC17(h), page);
	if (restore_reserve)
		h->resv_huge_pages++;

	if (FUNC2(page)) {
		FUNC11(&page->lru);
		FUNC0(page);
		FUNC21(h, page);
	} else if (h->surplus_huge_pages_node[nid]) {
		/* remove the page from active list */
		FUNC11(&page->lru);
		FUNC21(h, page);
		h->surplus_huge_pages--;
		h->surplus_huge_pages_node[nid]--;
	} else {
		FUNC5(page);
		FUNC7(h, page);
	}
	FUNC20(&hugetlb_lock);
}