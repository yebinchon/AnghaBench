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
struct page_counter {int dummy; } ;
struct page {int dummy; } ;
struct hugetlb_cgroup {struct page_counter* hugepage; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct page*) ; 
 struct hugetlb_cgroup* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page_counter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page_counter*,unsigned int) ; 
 struct hugetlb_cgroup* FUNC4 (struct hugetlb_cgroup*) ; 
 struct hugetlb_cgroup* root_h_cgroup ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct hugetlb_cgroup*) ; 

__attribute__((used)) static void FUNC6(int idx, struct hugetlb_cgroup *h_cg,
				       struct page *page)
{
	unsigned int nr_pages;
	struct page_counter *counter;
	struct hugetlb_cgroup *page_hcg;
	struct hugetlb_cgroup *parent = FUNC4(h_cg);

	page_hcg = FUNC1(page);
	/*
	 * We can have pages in active list without any cgroup
	 * ie, hugepage with less than 3 pages. We can safely
	 * ignore those pages.
	 */
	if (!page_hcg || page_hcg != h_cg)
		goto out;

	nr_pages = FUNC0(page);
	if (!parent) {
		parent = root_h_cgroup;
		/* root has no limit */
		FUNC3(&parent->hugepage[idx], nr_pages);
	}
	counter = &h_cg->hugepage[idx];
	/* Take the pages off the local counter */
	FUNC2(counter, nr_pages);

	FUNC5(page, parent);
out:
	return;
}