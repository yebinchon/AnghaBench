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
struct zone {int dummy; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 struct zone* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct pagevec*,struct page*) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (unsigned long,unsigned long) ; 
 struct page* FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC12(struct pagevec *pvec,
			struct vm_area_struct *vma, struct zone *zone,
			unsigned long start, unsigned long end)
{
	pte_t *pte;
	spinlock_t *ptl;

	/*
	 * Initialize pte walk starting at the already pinned page where we
	 * are sure that there is a pte, as it was pinned under the same
	 * mmap_sem write op.
	 */
	pte = FUNC1(vma->vm_mm, start,	&ptl);
	/* Make sure we do not cross the page table boundary */
	end = FUNC6(start, end);
	end = FUNC3(start, end);
	end = FUNC10(start, end);
	end = FUNC7(start, end);

	/* The page next to the pinned page is the first we will try to get */
	start += PAGE_SIZE;
	while (start < end) {
		struct page *page = NULL;
		pte++;
		if (FUNC8(*pte))
			page = FUNC11(vma, start, *pte);
		/*
		 * Break if page could not be obtained or the page's node+zone does not
		 * match
		 */
		if (!page || FUNC4(page) != zone)
			break;

		/*
		 * Do not use pagevec for PTE-mapped THP,
		 * munlock_vma_pages_range() will handle them.
		 */
		if (FUNC0(page))
			break;

		FUNC2(page);
		/*
		 * Increase the address that will be returned *before* the
		 * eventual break due to pvec becoming full by adding the page
		 */
		start += PAGE_SIZE;
		if (FUNC5(pvec, page) == 0)
			break;
	}
	FUNC9(pte, ptl);
	return start;
}