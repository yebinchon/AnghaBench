#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page_counter {int dummy; } ;
struct mem_cgroup {scalar_t__ high; int /*<<< orphan*/  high_work; int /*<<< orphan*/  memory; int /*<<< orphan*/  css; int /*<<< orphan*/  memsw; } ;
typedef  int gfp_t ;
typedef  enum oom_status { ____Placeholder_oom_status } oom_status ;
struct TYPE_5__ {int flags; unsigned int memcg_nr_pages_over_high; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MEMCG_CHARGE_BATCH ; 
 int /*<<< orphan*/  MEMCG_MAX ; 
 int MEM_CGROUP_RECLAIM_RETRIES ; 
#define  OOM_FAILED 129 
#define  OOM_SUCCESS 128 
 int PAGE_ALLOC_COSTLY_ORDER ; 
 unsigned int PAGE_SIZE ; 
 int PF_MEMALLOC ; 
 int __GFP_ATOMIC ; 
 int __GFP_NOFAIL ; 
 int __GFP_NORETRY ; 
 int __GFP_RETRY_MAYFAIL ; 
 scalar_t__ FUNC0 (struct mem_cgroup*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 struct mem_cgroup* FUNC9 (struct page_counter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mem_cgroup*) ; 
 unsigned int FUNC11 (struct mem_cgroup*) ; 
 int FUNC12 (struct mem_cgroup*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC14 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory ; 
 int /*<<< orphan*/  memsw ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,unsigned int,struct page_counter**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned int) ; 
 struct mem_cgroup* FUNC19 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC20 (struct mem_cgroup*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int FUNC23 () ; 
 int FUNC24 (TYPE_1__*) ; 
 unsigned long FUNC25 (struct mem_cgroup*,unsigned int,int,int) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static int FUNC27(struct mem_cgroup *memcg, gfp_t gfp_mask,
		      unsigned int nr_pages)
{
	unsigned int batch = FUNC8(MEMCG_CHARGE_BATCH, nr_pages);
	int nr_retries = MEM_CGROUP_RECLAIM_RETRIES;
	struct mem_cgroup *mem_over_limit;
	struct page_counter *counter;
	unsigned long nr_reclaimed;
	bool may_swap = true;
	bool drained = false;
	enum oom_status oom_status;

	if (FUNC10(memcg))
		return 0;
retry:
	if (FUNC0(memcg, nr_pages))
		return 0;

	if (!FUNC2() ||
	    FUNC17(&memcg->memsw, batch, &counter)) {
		if (FUNC17(&memcg->memory, batch, &counter))
			goto done_restock;
		if (FUNC2())
			FUNC18(&memcg->memsw, batch);
		mem_over_limit = FUNC9(counter, memory);
	} else {
		mem_over_limit = FUNC9(counter, memsw);
		may_swap = false;
	}

	if (batch > nr_pages) {
		batch = nr_pages;
		goto retry;
	}

	/*
	 * Memcg doesn't have a dedicated reserve for atomic
	 * allocations. But like the global atomic pool, we need to
	 * put the burden of reclaim on regular allocation requests
	 * and let these go through as privileged allocations.
	 */
	if (gfp_mask & __GFP_ATOMIC)
		goto force;

	/*
	 * Unlike in global OOM situations, memcg is not in a physical
	 * memory shortage.  Allow dying and OOM-killed tasks to
	 * bypass the last charges so that they can exit quickly and
	 * free their memory.
	 */
	if (FUNC26(FUNC23()))
		goto force;

	/*
	 * Prevent unbounded recursion when reclaim operations need to
	 * allocate memory. This might exceed the limits temporarily,
	 * but we prefer facilitating memory reclaim and getting back
	 * under the limit over triggering OOM kills in these cases.
	 */
	if (FUNC26(current->flags & PF_MEMALLOC))
		goto force;

	if (FUNC26(FUNC24(current)))
		goto nomem;

	if (!FUNC6(gfp_mask))
		goto nomem;

	FUNC14(mem_over_limit, MEMCG_MAX);

	nr_reclaimed = FUNC25(mem_over_limit, nr_pages,
						    gfp_mask, may_swap);

	if (FUNC11(mem_over_limit) >= nr_pages)
		goto retry;

	if (!drained) {
		FUNC3(mem_over_limit);
		drained = true;
		goto retry;
	}

	if (gfp_mask & __GFP_NORETRY)
		goto nomem;
	/*
	 * Even though the limit is exceeded at this point, reclaim
	 * may have been able to free some pages.  Retry the charge
	 * before killing the task.
	 *
	 * Only for regular pages, though: huge pages are rather
	 * unlikely to succeed so close to the limit, and we fall back
	 * to regular pages anyway in case of failure.
	 */
	if (nr_reclaimed && nr_pages <= (1 << PAGE_ALLOC_COSTLY_ORDER))
		goto retry;
	/*
	 * At task move, charge accounts can be doubly counted. So, it's
	 * better to wait until the end of task_move if something is going on.
	 */
	if (FUNC13(mem_over_limit))
		goto retry;

	if (nr_retries--)
		goto retry;

	if (gfp_mask & __GFP_RETRY_MAYFAIL)
		goto nomem;

	if (gfp_mask & __GFP_NOFAIL)
		goto force;

	if (FUNC4(current))
		goto force;

	/*
	 * keep retrying as long as the memcg oom killer is able to make
	 * a forward progress or bypass the charge if the oom killer
	 * couldn't make any progress.
	 */
	oom_status = FUNC12(mem_over_limit, gfp_mask,
		       FUNC5(nr_pages * PAGE_SIZE));
	switch (oom_status) {
	case OOM_SUCCESS:
		nr_retries = MEM_CGROUP_RECLAIM_RETRIES;
		goto retry;
	case OOM_FAILED:
		goto force;
	default:
		goto nomem;
	}
nomem:
	if (!(gfp_mask & __GFP_NOFAIL))
		return -ENOMEM;
force:
	/*
	 * The allocation either can't fail or will lead to more memory
	 * being freed very soon.  Allow memory usage go over the limit
	 * temporarily by force charging it.
	 */
	FUNC15(&memcg->memory, nr_pages);
	if (FUNC2())
		FUNC15(&memcg->memsw, nr_pages);
	FUNC1(&memcg->css, nr_pages);

	return 0;

done_restock:
	FUNC1(&memcg->css, batch);
	if (batch > nr_pages)
		FUNC20(memcg, batch - nr_pages);

	/*
	 * If the hierarchy is above the normal consumption range, schedule
	 * reclaim on returning to userland.  We can perform reclaim here
	 * if __GFP_RECLAIM but let's always punt for simplicity and so that
	 * GFP_KERNEL can consistently be used during reclaim.  @memcg is
	 * not recorded as it most likely matches current's and won't
	 * change in the meantime.  As high limit is checked again before
	 * reclaim, the cost of mismatch is negligible.
	 */
	do {
		if (FUNC16(&memcg->memory) > memcg->high) {
			/* Don't bother a random interrupted task */
			if (FUNC7()) {
				FUNC21(&memcg->high_work);
				break;
			}
			current->memcg_nr_pages_over_high += batch;
			FUNC22(current);
			break;
		}
	} while ((memcg = FUNC19(memcg)));

	return 0;
}