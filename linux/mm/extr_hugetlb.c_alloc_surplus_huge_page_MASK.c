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
struct hstate {scalar_t__ surplus_huge_pages; scalar_t__ nr_overcommit_huge_pages; int /*<<< orphan*/ * surplus_huge_pages_node; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 size_t FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC7(struct hstate *h, gfp_t gfp_mask,
		int nid, nodemask_t *nmask)
{
	struct page *page = NULL;

	if (FUNC2(h))
		return NULL;

	FUNC5(&hugetlb_lock);
	if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages)
		goto out_unlock;
	FUNC6(&hugetlb_lock);

	page = FUNC1(h, gfp_mask, nid, nmask, NULL);
	if (!page)
		return NULL;

	FUNC5(&hugetlb_lock);
	/*
	 * We could have raced with the pool size change.
	 * Double check that and simply deallocate the new page
	 * if we would end up overcommiting the surpluses. Abuse
	 * temporary page to workaround the nasty free_huge_page
	 * codeflow
	 */
	if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages) {
		FUNC0(page);
		FUNC6(&hugetlb_lock);
		FUNC4(page);
		return NULL;
	} else {
		h->surplus_huge_pages++;
		h->surplus_huge_pages_node[FUNC3(page)]++;
	}

out_unlock:
	FUNC6(&hugetlb_lock);

	return page;
}