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
struct seq_buf {char* buffer; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MEMCG_CACHE ; 
 scalar_t__ MEMCG_KERNEL_STACK_KB ; 
 scalar_t__ MEMCG_RSS ; 
 scalar_t__ MEMCG_RSS_HUGE ; 
 scalar_t__ MEMCG_SOCK ; 
 scalar_t__ NR_FILE_DIRTY ; 
 scalar_t__ NR_FILE_MAPPED ; 
 scalar_t__ NR_LRU_BASE ; 
 int NR_LRU_LISTS ; 
 scalar_t__ NR_SHMEM ; 
 scalar_t__ NR_SLAB_RECLAIMABLE ; 
 scalar_t__ NR_SLAB_UNRECLAIMABLE ; 
 scalar_t__ NR_WRITEBACK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PGACTIVATE ; 
 int /*<<< orphan*/  PGDEACTIVATE ; 
 int /*<<< orphan*/  PGFAULT ; 
 int /*<<< orphan*/  PGLAZYFREE ; 
 int /*<<< orphan*/  PGLAZYFREED ; 
 int /*<<< orphan*/  PGMAJFAULT ; 
 int /*<<< orphan*/  PGREFILL ; 
 int /*<<< orphan*/  PGSCAN_DIRECT ; 
 int /*<<< orphan*/  PGSCAN_KSWAPD ; 
 int /*<<< orphan*/  PGSTEAL_DIRECT ; 
 int /*<<< orphan*/  PGSTEAL_KSWAPD ; 
 int /*<<< orphan*/  THP_COLLAPSE_ALLOC ; 
 int /*<<< orphan*/  THP_FAULT_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WORKINGSET_ACTIVATE ; 
 scalar_t__ WORKINGSET_NODERECLAIM ; 
 scalar_t__ WORKINGSET_REFAULT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mem_cgroup_lru_names ; 
 int FUNC2 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mem_cgroup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_buf*,char*,int,...) ; 

__attribute__((used)) static char *FUNC7(struct mem_cgroup *memcg)
{
	struct seq_buf s;
	int i;

	FUNC5(&s, FUNC1(PAGE_SIZE, GFP_KERNEL), PAGE_SIZE);
	if (!s.buffer)
		return NULL;

	/*
	 * Provide statistics on the state of the memory subsystem as
	 * well as cumulative event counters that show past behavior.
	 *
	 * This list is ordered following a combination of these gradients:
	 * 1) generic big picture -> specifics and details
	 * 2) reflecting userspace activity -> reflecting kernel heuristics
	 *
	 * Current memory state:
	 */

	FUNC6(&s, "anon %llu\n",
		       (u64)FUNC3(memcg, MEMCG_RSS) *
		       PAGE_SIZE);
	FUNC6(&s, "file %llu\n",
		       (u64)FUNC3(memcg, MEMCG_CACHE) *
		       PAGE_SIZE);
	FUNC6(&s, "kernel_stack %llu\n",
		       (u64)FUNC3(memcg, MEMCG_KERNEL_STACK_KB) *
		       1024);
	FUNC6(&s, "slab %llu\n",
		       (u64)(FUNC3(memcg, NR_SLAB_RECLAIMABLE) +
			     FUNC3(memcg, NR_SLAB_UNRECLAIMABLE)) *
		       PAGE_SIZE);
	FUNC6(&s, "sock %llu\n",
		       (u64)FUNC3(memcg, MEMCG_SOCK) *
		       PAGE_SIZE);

	FUNC6(&s, "shmem %llu\n",
		       (u64)FUNC3(memcg, NR_SHMEM) *
		       PAGE_SIZE);
	FUNC6(&s, "file_mapped %llu\n",
		       (u64)FUNC3(memcg, NR_FILE_MAPPED) *
		       PAGE_SIZE);
	FUNC6(&s, "file_dirty %llu\n",
		       (u64)FUNC3(memcg, NR_FILE_DIRTY) *
		       PAGE_SIZE);
	FUNC6(&s, "file_writeback %llu\n",
		       (u64)FUNC3(memcg, NR_WRITEBACK) *
		       PAGE_SIZE);

	/*
	 * TODO: We should eventually replace our own MEMCG_RSS_HUGE counter
	 * with the NR_ANON_THP vm counter, but right now it's a pain in the
	 * arse because it requires migrating the work out of rmap to a place
	 * where the page->mem_cgroup is set up and stable.
	 */
	FUNC6(&s, "anon_thp %llu\n",
		       (u64)FUNC3(memcg, MEMCG_RSS_HUGE) *
		       PAGE_SIZE);

	for (i = 0; i < NR_LRU_LISTS; i++)
		FUNC6(&s, "%s %llu\n", mem_cgroup_lru_names[i],
			       (u64)FUNC3(memcg, NR_LRU_BASE + i) *
			       PAGE_SIZE);

	FUNC6(&s, "slab_reclaimable %llu\n",
		       (u64)FUNC3(memcg, NR_SLAB_RECLAIMABLE) *
		       PAGE_SIZE);
	FUNC6(&s, "slab_unreclaimable %llu\n",
		       (u64)FUNC3(memcg, NR_SLAB_UNRECLAIMABLE) *
		       PAGE_SIZE);

	/* Accumulated memory events */

	FUNC6(&s, "pgfault %lu\n", FUNC2(memcg, PGFAULT));
	FUNC6(&s, "pgmajfault %lu\n", FUNC2(memcg, PGMAJFAULT));

	FUNC6(&s, "workingset_refault %lu\n",
		       FUNC3(memcg, WORKINGSET_REFAULT));
	FUNC6(&s, "workingset_activate %lu\n",
		       FUNC3(memcg, WORKINGSET_ACTIVATE));
	FUNC6(&s, "workingset_nodereclaim %lu\n",
		       FUNC3(memcg, WORKINGSET_NODERECLAIM));

	FUNC6(&s, "pgrefill %lu\n", FUNC2(memcg, PGREFILL));
	FUNC6(&s, "pgscan %lu\n",
		       FUNC2(memcg, PGSCAN_KSWAPD) +
		       FUNC2(memcg, PGSCAN_DIRECT));
	FUNC6(&s, "pgsteal %lu\n",
		       FUNC2(memcg, PGSTEAL_KSWAPD) +
		       FUNC2(memcg, PGSTEAL_DIRECT));
	FUNC6(&s, "pgactivate %lu\n", FUNC2(memcg, PGACTIVATE));
	FUNC6(&s, "pgdeactivate %lu\n", FUNC2(memcg, PGDEACTIVATE));
	FUNC6(&s, "pglazyfree %lu\n", FUNC2(memcg, PGLAZYFREE));
	FUNC6(&s, "pglazyfreed %lu\n", FUNC2(memcg, PGLAZYFREED));

#ifdef CONFIG_TRANSPARENT_HUGEPAGE
	seq_buf_printf(&s, "thp_fault_alloc %lu\n",
		       memcg_events(memcg, THP_FAULT_ALLOC));
	seq_buf_printf(&s, "thp_collapse_alloc %lu\n",
		       memcg_events(memcg, THP_COLLAPSE_ALLOC));
#endif /* CONFIG_TRANSPARENT_HUGEPAGE */

	/* The above should easily fit into one page */
	FUNC0(FUNC4(&s));

	return s.buffer;
}