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
struct hugetlb_cgroup {int /*<<< orphan*/ * hugepage; } ;

/* Variables and functions */
 scalar_t__ HUGETLB_CGROUP_MIN_ORDER ; 
 int /*<<< orphan*/ * hstates ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(int idx, unsigned long nr_pages,
				    struct hugetlb_cgroup *h_cg)
{
	if (FUNC1() || !h_cg)
		return;

	if (FUNC0(&hstates[idx]) < HUGETLB_CGROUP_MIN_ORDER)
		return;

	FUNC2(&h_cg->hugepage[idx], nr_pages);
	return;
}