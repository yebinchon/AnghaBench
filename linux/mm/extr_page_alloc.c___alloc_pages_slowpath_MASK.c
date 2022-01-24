#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct alloc_context {scalar_t__ migratetype; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/  high_zoneidx; int /*<<< orphan*/  zonelist; TYPE_1__* preferred_zoneref; } ;
typedef  int gfp_t ;
typedef  enum compact_result { ____Placeholder_compact_result } compact_result ;
typedef  enum compact_priority { ____Placeholder_compact_priority } compact_priority ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 unsigned int ALLOC_CPUSET ; 
 int /*<<< orphan*/  ALLOC_HARDER ; 
 unsigned int ALLOC_KSWAPD ; 
 unsigned int ALLOC_OOM ; 
 int COMPACT_DEFERRED ; 
 int COMPACT_SKIPPED ; 
 int DEF_COMPACT_PRIORITY ; 
 int INIT_COMPACT_PRIORITY ; 
 scalar_t__ MIGRATE_MOVABLE ; 
 unsigned int PAGE_ALLOC_COSTLY_ORDER ; 
 int PF_MEMALLOC ; 
 scalar_t__ FUNC0 (int) ; 
 int __GFP_ATOMIC ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_IO ; 
 int __GFP_NOFAIL ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_RETRY_MAYFAIL ; 
 struct page* FUNC1 (int,unsigned int,int /*<<< orphan*/ ,struct alloc_context*) ; 
 struct page* FUNC2 (int,unsigned int,unsigned int,struct alloc_context*,int,int*) ; 
 struct page* FUNC3 (int,unsigned int,unsigned int,struct alloc_context*,unsigned long*) ; 
 struct page* FUNC4 (int,unsigned int,struct alloc_context*,unsigned long*) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned int,struct alloc_context*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* current ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (int,unsigned int,unsigned int,struct alloc_context*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 unsigned int FUNC11 (int) ; 
 unsigned int pageblock_order ; 
 unsigned int FUNC12 () ; 
 scalar_t__ FUNC13 (struct alloc_context*,unsigned int,unsigned int,int,int*,int*) ; 
 scalar_t__ FUNC14 (int,unsigned int,struct alloc_context*,unsigned int,int,int*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,int,struct alloc_context*) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static inline struct page *
FUNC18(gfp_t gfp_mask, unsigned int order,
						struct alloc_context *ac)
{
	bool can_direct_reclaim = gfp_mask & __GFP_DIRECT_RECLAIM;
	const bool costly_order = order > PAGE_ALLOC_COSTLY_ORDER;
	struct page *page = NULL;
	unsigned int alloc_flags;
	unsigned long did_some_progress;
	enum compact_priority compact_priority;
	enum compact_result compact_result;
	int compaction_retries;
	int no_progress_loops;
	unsigned int cpuset_mems_cookie;
	int reserve_flags;

	/*
	 * We also sanity check to catch abuse of atomic reserves being used by
	 * callers that are not in atomic context.
	 */
	if (FUNC0((gfp_mask & (__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)) ==
				(__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)))
		gfp_mask &= ~__GFP_ATOMIC;

retry_cpuset:
	compaction_retries = 0;
	no_progress_loops = 0;
	compact_priority = DEF_COMPACT_PRIORITY;
	cpuset_mems_cookie = FUNC12();

	/*
	 * The fast path uses conservative alloc_flags to succeed only until
	 * kswapd needs to be woken up, and to avoid the cost of setting up
	 * alloc_flags precisely. So we do that now.
	 */
	alloc_flags = FUNC11(gfp_mask);

	/*
	 * We need to recalculate the starting point for the zonelist iterator
	 * because we might have used different nodemask in the fast path, or
	 * there was a cpuset modification and we are retrying - otherwise we
	 * could end up iterating over non-eligible zones endlessly.
	 */
	ac->preferred_zoneref = FUNC8(ac->zonelist,
					ac->high_zoneidx, ac->nodemask);
	if (!ac->preferred_zoneref->zone)
		goto nopage;

	if (alloc_flags & ALLOC_KSWAPD)
		FUNC16(order, gfp_mask, ac);

	/*
	 * The adjusted alloc_flags might result in immediate success, so try
	 * that first
	 */
	page = FUNC9(gfp_mask, order, alloc_flags, ac);
	if (page)
		goto got_pg;

	/*
	 * For costly allocations, try direct compaction first, as it's likely
	 * that we have enough base pages and don't need to reclaim. For non-
	 * movable high-order allocations, do that as well, as compaction will
	 * try prevent permanent fragmentation by migrating from blocks of the
	 * same migratetype.
	 * Don't try this for allocations that are allowed to ignore
	 * watermarks, as the ALLOC_NO_WATERMARKS attempt didn't yet happen.
	 */
	if (can_direct_reclaim &&
			(costly_order ||
			   (order > 0 && ac->migratetype != MIGRATE_MOVABLE))
			&& !FUNC10(gfp_mask)) {
		page = FUNC2(gfp_mask, order,
						alloc_flags, ac,
						INIT_COMPACT_PRIORITY,
						&compact_result);
		if (page)
			goto got_pg;

		 if (order >= pageblock_order && (gfp_mask & __GFP_IO) &&
		     !(gfp_mask & __GFP_RETRY_MAYFAIL)) {
			/*
			 * If allocating entire pageblock(s) and compaction
			 * failed because all zones are below low watermarks
			 * or is prohibited because it recently failed at this
			 * order, fail immediately unless the allocator has
			 * requested compaction and reclaim retry.
			 *
			 * Reclaim is
			 *  - potentially very expensive because zones are far
			 *    below their low watermarks or this is part of very
			 *    bursty high order allocations,
			 *  - not guaranteed to help because isolate_freepages()
			 *    may not iterate over freed pages as part of its
			 *    linear scan, and
			 *  - unlikely to make entire pageblocks free on its
			 *    own.
			 */
			if (compact_result == COMPACT_SKIPPED ||
			    compact_result == COMPACT_DEFERRED)
				goto nopage;
		}

		/*
		 * Checks for costly allocations with __GFP_NORETRY, which
		 * includes THP page fault allocations
		 */
		if (costly_order && (gfp_mask & __GFP_NORETRY)) {
			/*
			 * If compaction is deferred for high-order allocations,
			 * it is because sync compaction recently failed. If
			 * this is the case and the caller requested a THP
			 * allocation, we do not want to heavily disrupt the
			 * system, so we fail the allocation instead of entering
			 * direct reclaim.
			 */
			if (compact_result == COMPACT_DEFERRED)
				goto nopage;

			/*
			 * Looks like reclaim/compaction is worth trying, but
			 * sync compaction could be very expensive, so keep
			 * using async compaction.
			 */
			compact_priority = INIT_COMPACT_PRIORITY;
		}
	}

retry:
	/* Ensure kswapd doesn't accidentally go to sleep as long as we loop */
	if (alloc_flags & ALLOC_KSWAPD)
		FUNC16(order, gfp_mask, ac);

	reserve_flags = FUNC5(gfp_mask);
	if (reserve_flags)
		alloc_flags = reserve_flags;

	/*
	 * Reset the nodemask and zonelist iterators if memory policies can be
	 * ignored. These allocations are high priority and system rather than
	 * user oriented.
	 */
	if (!(alloc_flags & ALLOC_CPUSET) || reserve_flags) {
		ac->nodemask = NULL;
		ac->preferred_zoneref = FUNC8(ac->zonelist,
					ac->high_zoneidx, ac->nodemask);
	}

	/* Attempt with potentially adjusted zonelist and alloc_flags */
	page = FUNC9(gfp_mask, order, alloc_flags, ac);
	if (page)
		goto got_pg;

	/* Caller is not willing to reclaim, we can't balance anything */
	if (!can_direct_reclaim)
		goto nopage;

	/* Avoid recursion of direct reclaim */
	if (current->flags & PF_MEMALLOC)
		goto nopage;

	/* Try direct reclaim and then allocating */
	page = FUNC3(gfp_mask, order, alloc_flags, ac,
							&did_some_progress);
	if (page)
		goto got_pg;

	/* Try direct compaction and then allocating */
	page = FUNC2(gfp_mask, order, alloc_flags, ac,
					compact_priority, &compact_result);
	if (page)
		goto got_pg;

	/* Do not loop if specifically requested */
	if (gfp_mask & __GFP_NORETRY)
		goto nopage;

	/*
	 * Do not retry costly high order allocations unless they are
	 * __GFP_RETRY_MAYFAIL
	 */
	if (costly_order && !(gfp_mask & __GFP_RETRY_MAYFAIL))
		goto nopage;

	if (FUNC14(gfp_mask, order, ac, alloc_flags,
				 did_some_progress > 0, &no_progress_loops))
		goto retry;

	/*
	 * It doesn't make any sense to retry for the compaction if the order-0
	 * reclaim is not able to make any progress because the current
	 * implementation of the compaction depends on the sufficient amount
	 * of free memory (see __compaction_suitable)
	 */
	if (did_some_progress > 0 &&
			FUNC13(ac, order, alloc_flags,
				compact_result, &compact_priority,
				&compaction_retries))
		goto retry;


	/* Deal with possible cpuset update races before we start OOM killing */
	if (FUNC6(cpuset_mems_cookie, ac))
		goto retry_cpuset;

	/* Reclaim has failed us, start killing things */
	page = FUNC4(gfp_mask, order, ac, &did_some_progress);
	if (page)
		goto got_pg;

	/* Avoid allocations with no watermarks from looping endlessly */
	if (FUNC15(current) &&
	    (alloc_flags == ALLOC_OOM ||
	     (gfp_mask & __GFP_NOMEMALLOC)))
		goto nopage;

	/* Retry as long as the OOM killer is making progress */
	if (did_some_progress) {
		no_progress_loops = 0;
		goto retry;
	}

nopage:
	/* Deal with possible cpuset update races before we fail */
	if (FUNC6(cpuset_mems_cookie, ac))
		goto retry_cpuset;

	/*
	 * Make sure that __GFP_NOFAIL request doesn't leak out and make sure
	 * we always retry
	 */
	if (gfp_mask & __GFP_NOFAIL) {
		/*
		 * All existing users of the __GFP_NOFAIL are blockable, so warn
		 * of any new users that actually require GFP_NOWAIT
		 */
		if (FUNC0(!can_direct_reclaim))
			goto fail;

		/*
		 * PF_MEMALLOC request from this context is rather bizarre
		 * because we cannot reclaim anything and only can loop waiting
		 * for somebody to do a work for us
		 */
		FUNC0(current->flags & PF_MEMALLOC);

		/*
		 * non failing costly orders are a hard requirement which we
		 * are not prepared for much so let's warn about these users
		 * so that we can identify them and convert them to something
		 * else.
		 */
		FUNC0(order > PAGE_ALLOC_COSTLY_ORDER);

		/*
		 * Help non-failing allocations by giving them access to memory
		 * reserves but do not use ALLOC_NO_WATERMARKS because this
		 * could deplete whole memory reserves which would just make
		 * the situation worse
		 */
		page = FUNC1(gfp_mask, order, ALLOC_HARDER, ac);
		if (page)
			goto got_pg;

		FUNC7();
		goto retry;
	}
fail:
	FUNC17(gfp_mask, ac->nodemask,
			"page allocation failure: order:%u", order);
got_pg:
	return page;
}