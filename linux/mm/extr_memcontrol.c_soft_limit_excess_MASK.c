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
struct mem_cgroup {int /*<<< orphan*/  soft_limit; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC2(struct mem_cgroup *memcg)
{
	unsigned long nr_pages = FUNC1(&memcg->memory);
	unsigned long soft_limit = FUNC0(memcg->soft_limit);
	unsigned long excess = 0;

	if (nr_pages > soft_limit)
		excess = nr_pages - soft_limit;

	return excess;
}