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
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct page *FUNC5(struct hstate *h, int preferred_nid,
		nodemask_t *nmask)
{
	gfp_t gfp_mask = FUNC2(h);

	FUNC3(&hugetlb_lock);
	if (h->free_huge_pages - h->resv_huge_pages > 0) {
		struct page *page;

		page = FUNC1(h, gfp_mask, preferred_nid, nmask);
		if (page) {
			FUNC4(&hugetlb_lock);
			return page;
		}
	}
	FUNC4(&hugetlb_lock);

	return FUNC0(h, gfp_mask, preferred_nid, nmask);
}