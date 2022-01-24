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
typedef  int u64 ;
struct page_counter {int failcnt; int /*<<< orphan*/  watermark; int /*<<< orphan*/  max; } ;
struct mem_cgroup {int /*<<< orphan*/  soft_limit; struct page_counter memsw; struct page_counter memory; struct page_counter tcpmem; struct page_counter kmem; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
#define  RES_FAILCNT 136 
#define  RES_LIMIT 135 
#define  RES_MAX_USAGE 134 
#define  RES_SOFT_LIMIT 133 
#define  RES_USAGE 132 
#define  _KMEM 131 
#define  _MEM 130 
#define  _MEMSWAP 129 
#define  _TCP 128 
 struct mem_cgroup* FUNC3 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page_counter*) ; 

__attribute__((used)) static u64 FUNC6(struct cgroup_subsys_state *css,
			       struct cftype *cft)
{
	struct mem_cgroup *memcg = FUNC3(css);
	struct page_counter *counter;

	switch (FUNC2(cft->private)) {
	case _MEM:
		counter = &memcg->memory;
		break;
	case _MEMSWAP:
		counter = &memcg->memsw;
		break;
	case _KMEM:
		counter = &memcg->kmem;
		break;
	case _TCP:
		counter = &memcg->tcpmem;
		break;
	default:
		FUNC0();
	}

	switch (FUNC1(cft->private)) {
	case RES_USAGE:
		if (counter == &memcg->memory)
			return (u64)FUNC4(memcg, false) * PAGE_SIZE;
		if (counter == &memcg->memsw)
			return (u64)FUNC4(memcg, true) * PAGE_SIZE;
		return (u64)FUNC5(counter) * PAGE_SIZE;
	case RES_LIMIT:
		return (u64)counter->max * PAGE_SIZE;
	case RES_MAX_USAGE:
		return (u64)counter->watermark * PAGE_SIZE;
	case RES_FAILCNT:
		return counter->failcnt;
	case RES_SOFT_LIMIT:
		return (u64)memcg->soft_limit * PAGE_SIZE;
	default:
		FUNC0();
	}
}