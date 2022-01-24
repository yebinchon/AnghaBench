#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int /*<<< orphan*/  mapping; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct mem_cgroup*,int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mem_cgroup*,struct page*,int,unsigned int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_cgroup*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

void FUNC13(struct page *page, struct mem_cgroup *memcg,
			      bool lrucare, bool compound)
{
	unsigned int nr_pages = compound ? FUNC5(page) : 1;

	FUNC2(!page->mapping, page);
	FUNC2(FUNC0(page) && !lrucare, page);

	if (FUNC9())
		return;
	/*
	 * Swap faults will attempt to charge the same page multiple
	 * times.  But reuse_swap_page() might have removed the page
	 * from swapcache already, so we can't check PageSwapCache().
	 */
	if (!memcg)
		return;

	FUNC3(page, memcg, lrucare);

	FUNC6();
	FUNC8(memcg, page, compound, nr_pages);
	FUNC11(memcg, page);
	FUNC7();

	if (FUNC4() && FUNC1(page)) {
		swp_entry_t entry = { .val = FUNC12(page) };
		/*
		 * The swap entry might not get freed for a long time,
		 * let's not wait for it.  The page already received a
		 * memory+swap charge, drop the swap entry duplicate.
		 */
		FUNC10(entry, nr_pages);
	}
}