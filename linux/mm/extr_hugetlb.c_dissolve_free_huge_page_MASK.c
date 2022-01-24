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
struct page {int /*<<< orphan*/  lru; } ;
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; int /*<<< orphan*/  max_huge_pages; int /*<<< orphan*/ * free_huge_pages_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct hstate* FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hstate*,struct page*) ; 

int FUNC12(struct page *page)
{
	int rc = -EBUSY;

	/* Not to disrupt normal path by vainly holding hugetlb_lock */
	if (!FUNC2(page))
		return 0;

	FUNC9(&hugetlb_lock);
	if (!FUNC2(page)) {
		rc = 0;
		goto out;
	}

	if (!FUNC6(page)) {
		struct page *head = FUNC4(page);
		struct hstate *h = FUNC7(head);
		int nid = FUNC8(head);
		if (h->free_huge_pages - h->resv_huge_pages == 0)
			goto out;
		/*
		 * Move PageHWPoison flag from head page to the raw error page,
		 * which makes any subpages rather than the error page reusable.
		 */
		if (FUNC1(head) && page != head) {
			FUNC3(page);
			FUNC0(head);
		}
		FUNC5(&head->lru);
		h->free_huge_pages--;
		h->free_huge_pages_node[nid]--;
		h->max_huge_pages--;
		FUNC11(h, head);
		rc = 0;
	}
out:
	FUNC10(&hugetlb_lock);
	return rc;
}