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
struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC ; 
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC_FAIL ; 
 int NUMA_NO_NODE ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 struct page* FUNC0 (int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static struct page *FUNC7(struct hstate *h,
		gfp_t gfp_mask, int nid, nodemask_t *nmask,
		nodemask_t *node_alloc_noretry)
{
	int order = FUNC2(h);
	struct page *page;
	bool alloc_try_hard = true;

	/*
	 * By default we always try hard to allocate the page with
	 * __GFP_RETRY_MAYFAIL flag.  However, if we are allocating pages in
	 * a loop (to adjust global huge page counts) and previous allocation
	 * failed, do not continue to try hard on the same node.  Use the
	 * node_alloc_noretry bitmap to manage this state information.
	 */
	if (node_alloc_noretry && FUNC4(nid, *node_alloc_noretry))
		alloc_try_hard = false;
	gfp_mask |= __GFP_COMP|__GFP_NOWARN;
	if (alloc_try_hard)
		gfp_mask |= __GFP_RETRY_MAYFAIL;
	if (nid == NUMA_NO_NODE)
		nid = FUNC6();
	page = FUNC0(gfp_mask, order, nid, nmask);
	if (page)
		FUNC1(HTLB_BUDDY_PGALLOC);
	else
		FUNC1(HTLB_BUDDY_PGALLOC_FAIL);

	/*
	 * If we did not specify __GFP_RETRY_MAYFAIL, but still got a page this
	 * indicates an overall state change.  Clear bit so that we resume
	 * normal 'try hard' allocations.
	 */
	if (node_alloc_noretry && page && !alloc_try_hard)
		FUNC3(nid, *node_alloc_noretry);

	/*
	 * If we tried hard to get a page but failed, set bit so that
	 * subsequent attempts will not try as hard until there is an
	 * overall state change.
	 */
	if (node_alloc_noretry && !page && alloc_try_hard)
		FUNC5(nid, *node_alloc_noretry);

	return page;
}