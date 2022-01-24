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
struct hugetlb_cgroup {int /*<<< orphan*/ * hugepage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct hugetlb_cgroup* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(int idx, unsigned long nr_pages,
				  struct page *page)
{
	struct hugetlb_cgroup *h_cg;

	if (FUNC0())
		return;
	FUNC2(&hugetlb_lock);
	h_cg = FUNC1(page);
	if (FUNC5(!h_cg))
		return;
	FUNC4(page, NULL);
	FUNC3(&h_cg->hugepage[idx], nr_pages);
	return;
}