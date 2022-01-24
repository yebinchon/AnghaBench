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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  _mapcount; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  NR_ANON_MAPPED ; 
 int /*<<< orphan*/  NR_ANON_THPS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int RMAP_COMPOUND ; 
 int RMAP_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct page*) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct page *page,
	struct vm_area_struct *vma, unsigned long address, int flags)
{
	bool compound = flags & RMAP_COMPOUND;
	bool first;

	if (compound) {
		atomic_t *mapcount;
		FUNC3(!FUNC1(page), page);
		FUNC3(!FUNC2(page), page);
		mapcount = FUNC9(page);
		first = FUNC8(mapcount);
	} else {
		first = FUNC8(&page->_mapcount);
	}

	if (first) {
		int nr = compound ? FUNC10(page) : 1;
		/*
		 * We use the irq-unsafe __{inc|mod}_zone_page_stat because
		 * these counters are not modified in interrupt context, and
		 * pte lock(a spinlock) is held, which implies preemption
		 * disabled.
		 */
		if (compound)
			FUNC4(page, NR_ANON_THPS);
		FUNC5(FUNC11(page), NR_ANON_MAPPED, nr);
	}
	if (FUNC12(FUNC0(page)))
		return;

	FUNC3(!FUNC1(page), page);

	/* address might be in next vma when migration races vma_adjust */
	if (first)
		FUNC7(page, vma, address,
				flags & RMAP_EXCLUSIVE);
	else
		FUNC6(page, vma, address);
}