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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*,unsigned int) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(struct page *page, struct mem_cgroup *memcg,
		bool compound)
{
	unsigned int nr_pages = compound ? FUNC1(page) : 1;

	if (FUNC2())
		return;
	/*
	 * Swap faults will attempt to charge the same page multiple
	 * times.  But reuse_swap_page() might have removed the page
	 * from swapcache already, so we can't check PageSwapCache().
	 */
	if (!memcg)
		return;

	FUNC0(memcg, nr_pages);
}