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
struct hugetlb_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/ * hugepage; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HUGETLB_CGROUP_MIN_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/ * hstates ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 struct hugetlb_cgroup* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,struct page_counter**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(int idx, unsigned long nr_pages,
				 struct hugetlb_cgroup **ptr)
{
	int ret = 0;
	struct page_counter *counter;
	struct hugetlb_cgroup *h_cg = NULL;

	if (FUNC3())
		goto done;
	/*
	 * We don't charge any cgroup if the compound page have less
	 * than 3 pages.
	 */
	if (FUNC2(&hstates[idx]) < HUGETLB_CGROUP_MIN_ORDER)
		goto done;
again:
	FUNC6();
	h_cg = FUNC4(current);
	if (!FUNC1(&h_cg->css)) {
		FUNC7();
		goto again;
	}
	FUNC7();

	if (!FUNC5(&h_cg->hugepage[idx], nr_pages, &counter))
		ret = -ENOMEM;
	FUNC0(&h_cg->css);
done:
	*ptr = h_cg;
	return ret;
}