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
struct mmu_gather_batch {scalar_t__ nr; scalar_t__ max; struct page** pages; } ;
struct mmu_gather {int page_size; struct mmu_gather_batch* active; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*) ; 

bool FUNC4(struct mmu_gather *tlb, struct page *page, int page_size)
{
	struct mmu_gather_batch *batch;

	FUNC0(!tlb->end);

#ifdef CONFIG_HAVE_MMU_GATHER_PAGE_SIZE
	VM_WARN_ON(tlb->page_size != page_size);
#endif

	batch = tlb->active;
	/*
	 * Add the page and check if we are full. If so
	 * force a flush.
	 */
	batch->pages[batch->nr++] = page;
	if (batch->nr == batch->max) {
		if (!FUNC3(tlb))
			return true;
		batch = tlb->active;
	}
	FUNC1(batch->nr > batch->max, page);

	return false;
}