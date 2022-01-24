#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_slots_cache {int /*<<< orphan*/  alloc_lock; scalar_t__ nr; int /*<<< orphan*/  cur; TYPE_1__* slots; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THP_SWAP ; 
 int HPAGE_PMD_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct page*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,TYPE_1__) ; 
 struct swap_slots_cache* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct swap_slots_cache*) ; 
 int /*<<< orphan*/  swp_slots ; 

swp_entry_t FUNC11(struct page *page)
{
	swp_entry_t entry, *pentry;
	struct swap_slots_cache *cache;

	entry.val = 0;

	if (FUNC1(page)) {
		if (FUNC0(CONFIG_THP_SWAP))
			FUNC3(1, &entry, HPAGE_PMD_NR);
		goto out;
	}

	/*
	 * Preemption is allowed here, because we may sleep
	 * in refill_swap_slots_cache().  But it is safe, because
	 * accesses to the per-CPU data structure are protected by the
	 * mutex cache->alloc_lock.
	 *
	 * The alloc path here does not touch cache->slots_ret
	 * so cache->free_lock is not taken.
	 */
	cache = FUNC9(&swp_slots);

	if (FUNC4(FUNC2() && cache->slots)) {
		FUNC6(&cache->alloc_lock);
		if (cache->slots) {
repeat:
			if (cache->nr) {
				pentry = &cache->slots[cache->cur++];
				entry = *pentry;
				pentry->val = 0;
				cache->nr--;
			} else {
				if (FUNC10(cache))
					goto repeat;
			}
		}
		FUNC7(&cache->alloc_lock);
		if (entry.val)
			goto out;
	}

	FUNC3(1, &entry, 1);
out:
	if (FUNC5(page, entry)) {
		FUNC8(page, entry);
		entry.val = 0;
	}
	return entry;
}