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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  __GFP_THISNODE ; 
 struct page* FUNC0 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct page *FUNC5(struct hstate *h, int nid)
{
	gfp_t gfp_mask = FUNC2(h);
	struct page *page = NULL;

	if (nid != NUMA_NO_NODE)
		gfp_mask |= __GFP_THISNODE;

	FUNC3(&hugetlb_lock);
	if (h->free_huge_pages - h->resv_huge_pages > 0)
		page = FUNC1(h, gfp_mask, nid, NULL);
	FUNC4(&hugetlb_lock);

	if (!page)
		page = FUNC0(h, gfp_mask, nid, NULL);

	return page;
}