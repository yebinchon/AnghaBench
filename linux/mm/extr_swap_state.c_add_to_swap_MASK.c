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
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int __GFP_HIGH ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NOWARN ; 
 int FUNC3 (struct page*,TYPE_1__,int) ; 
 TYPE_1__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *page)
{
	swp_entry_t entry;
	int err;

	FUNC2(!FUNC0(page), page);
	FUNC2(!FUNC1(page), page);

	entry = FUNC4(page);
	if (!entry.val)
		return 0;

	/*
	 * XArray node allocations from PF_MEMALLOC contexts could
	 * completely exhaust the page allocator. __GFP_NOMEMALLOC
	 * stops emergency reserves from being allocated.
	 *
	 * TODO: this could cause a theoretical memory reclaim
	 * deadlock in the swap out path.
	 */
	/*
	 * Add it to the swap cache.
	 */
	err = FUNC3(page, entry,
			__GFP_HIGH|__GFP_NOMEMALLOC|__GFP_NOWARN);
	if (err)
		/*
		 * add_to_swap_cache() doesn't return -EEXIST, so we can safely
		 * clear SWAP_HAS_CACHE flag.
		 */
		goto fail;
	/*
	 * Normally the page will be dirtied in unmap because its pte should be
	 * dirty. A special case is MADV_FREE page. The page'e pte could have
	 * dirty bit cleared but the page's SwapBacked bit is still set because
	 * clearing the dirty bit and SwapBacked bit has no lock protected. For
	 * such page, unmap will not set dirty bit for it, so page reclaim will
	 * not write the page out. This can cause data corruption when the page
	 * is swap in later. Always setting the dirty bit for the page solves
	 * the problem.
	 */
	FUNC6(page);

	return 1;

fail:
	FUNC5(page, entry);
	return 0;
}