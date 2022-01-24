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
struct mem_cgroup {int /*<<< orphan*/  memsw; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCG_CACHE ; 
 int /*<<< orphan*/  MEMCG_RSS ; 
 int /*<<< orphan*/  MEMCG_SWAP ; 
 scalar_t__ FUNC0 (struct mem_cgroup*) ; 
 unsigned long FUNC1 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(struct mem_cgroup *memcg, bool swap)
{
	unsigned long val;

	if (FUNC0(memcg)) {
		val = FUNC1(memcg, MEMCG_CACHE) +
			FUNC1(memcg, MEMCG_RSS);
		if (swap)
			val += FUNC1(memcg, MEMCG_SWAP);
	} else {
		if (!swap)
			val = FUNC2(&memcg->memory);
		else
			val = FUNC2(&memcg->memsw);
	}
	return val;
}