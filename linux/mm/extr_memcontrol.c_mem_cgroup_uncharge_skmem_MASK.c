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
struct mem_cgroup {int /*<<< orphan*/  tcpmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*,unsigned int) ; 

void FUNC4(struct mem_cgroup *memcg, unsigned int nr_pages)
{
	if (!FUNC0(memory_cgrp_subsys)) {
		FUNC2(&memcg->tcpmem, nr_pages);
		return;
	}

	FUNC1(memcg, MEMCG_SOCK, -nr_pages);

	FUNC3(memcg, nr_pages);
}