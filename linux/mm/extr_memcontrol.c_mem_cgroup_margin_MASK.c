#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  max; } ;
struct mem_cgroup {TYPE_1__ memsw; TYPE_1__ memory; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static unsigned long FUNC4(struct mem_cgroup *memcg)
{
	unsigned long margin = 0;
	unsigned long count;
	unsigned long limit;

	count = FUNC3(&memcg->memory);
	limit = FUNC0(memcg->memory.max);
	if (count < limit)
		margin = limit - count;

	if (FUNC1()) {
		count = FUNC3(&memcg->memsw);
		limit = FUNC0(memcg->memsw.max);
		if (count <= limit)
			margin = FUNC2(margin, limit - count);
		else
			margin = 0;
	}

	return margin;
}