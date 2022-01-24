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
struct mem_cgroup {scalar_t__ high; int /*<<< orphan*/  memory; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCG_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC2 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *memcg,
			 unsigned int nr_pages,
			 gfp_t gfp_mask)
{
	do {
		if (FUNC1(&memcg->memory) <= memcg->high)
			continue;
		FUNC0(memcg, MEMCG_HIGH);
		FUNC3(memcg, nr_pages, gfp_mask, true);
	} while ((memcg = FUNC2(memcg)));
}