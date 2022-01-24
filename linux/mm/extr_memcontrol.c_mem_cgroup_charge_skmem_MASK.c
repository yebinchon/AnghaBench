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
struct mem_cgroup {int tcpmem_pressure; int /*<<< orphan*/  tcpmem; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int GFP_NOWAIT ; 
 int /*<<< orphan*/  MEMCG_SOCK ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int,struct page_counter**) ; 
 scalar_t__ FUNC5 (struct mem_cgroup*,int,unsigned int) ; 

bool FUNC6(struct mem_cgroup *memcg, unsigned int nr_pages)
{
	gfp_t gfp_mask = GFP_KERNEL;

	if (!FUNC0(memory_cgrp_subsys)) {
		struct page_counter *fail;

		if (FUNC4(&memcg->tcpmem, nr_pages, &fail)) {
			memcg->tcpmem_pressure = 0;
			return true;
		}
		FUNC3(&memcg->tcpmem, nr_pages);
		memcg->tcpmem_pressure = 1;
		return false;
	}

	/* Don't block in the packet receive path */
	if (FUNC1())
		gfp_mask = GFP_NOWAIT;

	FUNC2(memcg, MEMCG_SOCK, nr_pages);

	if (FUNC5(memcg, gfp_mask, nr_pages) == 0)
		return true;

	FUNC5(memcg, gfp_mask|__GFP_NOFAIL, nr_pages);
	return false;
}