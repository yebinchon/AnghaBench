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
struct page {int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_ANON_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void FUNC8 (struct page*) ; 
 void FUNC9 (struct page*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct page *page, bool compound)
{
	if (!FUNC0(page))
		return FUNC9(page, compound);

	if (compound)
		return FUNC8(page);

	/* page still mapped by someone else? */
	if (!FUNC4(-1, &page->_mapcount))
		return;

	/*
	 * We use the irq-unsafe __{inc|mod}_zone_page_stat because
	 * these counters are not modified in interrupt context, and
	 * pte lock(a spinlock) is held, which implies preemption disabled.
	 */
	FUNC3(page, NR_ANON_MAPPED);

	if (FUNC10(FUNC1(page)))
		FUNC5(page);

	if (FUNC2(page))
		FUNC7(FUNC6(page));

	/*
	 * It would be tidy to reset the PageAnon mapping here,
	 * but that might overwrite a racing page_add_anon_rmap
	 * which increments mapcount after us but sets mapping
	 * before us: so leave the reset to free_unref_page,
	 * and remember that it's only reliable while mapped.
	 * Leaving it set also helps swapoff to reinstate ptes
	 * faster for those pages still in swapcache.
	 */
}