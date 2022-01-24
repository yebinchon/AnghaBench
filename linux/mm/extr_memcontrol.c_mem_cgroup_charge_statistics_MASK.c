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
struct page {int dummy; } ;
struct mem_cgroup {TYPE_1__* vmstats_percpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_page_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCG_CACHE ; 
 int /*<<< orphan*/  MEMCG_RSS ; 
 int /*<<< orphan*/  MEMCG_RSS_HUGE ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 int /*<<< orphan*/  PGPGIN ; 
 int /*<<< orphan*/  PGPGOUT ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct mem_cgroup *memcg,
					 struct page *page,
					 bool compound, int nr_pages)
{
	/*
	 * Here, RSS means 'mapped anon' and anon's SwapCache. Shmem/tmpfs is
	 * counted as CACHE even if it's on ANON LRU.
	 */
	if (FUNC0(page))
		FUNC5(memcg, MEMCG_RSS, nr_pages);
	else {
		FUNC5(memcg, MEMCG_CACHE, nr_pages);
		if (FUNC1(page))
			FUNC5(memcg, NR_SHMEM, nr_pages);
	}

	if (compound) {
		FUNC3(!FUNC2(page), page);
		FUNC5(memcg, MEMCG_RSS_HUGE, nr_pages);
	}

	/* pagein of a big page is an event. So, ignore page size */
	if (nr_pages > 0)
		FUNC4(memcg, PGPGIN, 1);
	else {
		FUNC4(memcg, PGPGOUT, 1);
		nr_pages = -nr_pages; /* for event */
	}

	FUNC6(memcg->vmstats_percpu->nr_page_events, nr_pages);
}