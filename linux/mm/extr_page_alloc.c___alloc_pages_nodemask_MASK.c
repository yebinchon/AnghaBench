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
struct alloc_context {int spread_dirty_pages; int /*<<< orphan*/  migratetype; int /*<<< orphan*/ * nodemask; TYPE_1__* preferred_zoneref; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 unsigned int ALLOC_WMARK_LOW ; 
 unsigned int MAX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_ACCOUNT ; 
 int __GFP_NOWARN ; 
 struct page* FUNC1 (int,unsigned int,struct alloc_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int) ; 
 scalar_t__ FUNC3 (struct page*,int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct alloc_context*) ; 
 struct page* FUNC7 (int,unsigned int,unsigned int,struct alloc_context*) ; 
 int gfp_allowed_mask ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int,int,int /*<<< orphan*/ *,struct alloc_context*,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

struct page *
FUNC13(gfp_t gfp_mask, unsigned int order, int preferred_nid,
							nodemask_t *nodemask)
{
	struct page *page;
	unsigned int alloc_flags = ALLOC_WMARK_LOW;
	gfp_t alloc_mask; /* The gfp_t that was actually used for allocation */
	struct alloc_context ac = { };

	/*
	 * There are several places where we assume that the order value is sane
	 * so bail out early if the request is out of bound.
	 */
	if (FUNC12(order >= MAX_ORDER)) {
		FUNC0(!(gfp_mask & __GFP_NOWARN));
		return NULL;
	}

	gfp_mask &= gfp_allowed_mask;
	alloc_mask = gfp_mask;
	if (!FUNC10(gfp_mask, order, preferred_nid, nodemask, &ac, &alloc_mask, &alloc_flags))
		return NULL;

	FUNC6(gfp_mask, &ac);

	/*
	 * Forbid the first pass from falling back to types that fragment
	 * memory until all local zones are considered.
	 */
	alloc_flags |= FUNC4(ac.preferred_zoneref->zone, gfp_mask);

	/* First allocation attempt */
	page = FUNC7(alloc_mask, order, alloc_flags, &ac);
	if (FUNC8(page))
		goto out;

	/*
	 * Apply scoped allocation constraints. This is mainly about GFP_NOFS
	 * resp. GFP_NOIO which has to be inherited for all allocation requests
	 * from a particular context which has been marked by
	 * memalloc_no{fs,io}_{save,restore}.
	 */
	alloc_mask = FUNC5(gfp_mask);
	ac.spread_dirty_pages = false;

	/*
	 * Restore the original nodemask if it was potentially replaced with
	 * &cpuset_current_mems_allowed to optimize the fast-path attempt.
	 */
	if (FUNC12(ac.nodemask != nodemask))
		ac.nodemask = nodemask;

	page = FUNC1(alloc_mask, order, &ac);

out:
	if (FUNC9() && (gfp_mask & __GFP_ACCOUNT) && page &&
	    FUNC12(FUNC3(page, gfp_mask, order) != 0)) {
		FUNC2(page, order);
		page = NULL;
	}

	FUNC11(page, order, alloc_mask, ac.migratetype);

	return page;
}