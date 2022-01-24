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
struct uncharge_gather {int dummy; } ;
struct page {int /*<<< orphan*/  mem_cgroup; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uncharge_gather*) ; 
 int /*<<< orphan*/  FUNC2 (struct uncharge_gather*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct uncharge_gather*) ; 

void FUNC4(struct page *page)
{
	struct uncharge_gather ug;

	if (FUNC0())
		return;

	/* Don't touch page->lru of any random page, pre-check: */
	if (!page->mem_cgroup)
		return;

	FUNC2(&ug);
	FUNC3(page, &ug);
	FUNC1(&ug);
}