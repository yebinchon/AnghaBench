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
struct hugetlb_cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct hugetlb_cgroup*) ; 

void FUNC2(int idx, unsigned long nr_pages,
				  struct hugetlb_cgroup *h_cg,
				  struct page *page)
{
	if (FUNC0() || !h_cg)
		return;

	FUNC1(page, h_cg);
	return;
}