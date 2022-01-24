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
struct page_vma_mapped_walk {unsigned long address; int /*<<< orphan*/  pmd; scalar_t__ pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page_vma_mapped_walk*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static bool FUNC7(struct page *page,
					struct vm_area_struct *vma,
					unsigned long addr, void *arg)
{
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
		.address = addr,
	};
	bool referenced = false;

	while (FUNC3(&pvmw)) {
		addr = pvmw.address;
		if (pvmw.pte) {
			/*
			 * For PTE-mapped THP, one sub page is referenced,
			 * the whole THP is referenced.
			 */
			if (FUNC5(vma, addr, pvmw.pte))
				referenced = true;
		} else if (FUNC0(CONFIG_TRANSPARENT_HUGEPAGE)) {
			if (FUNC4(vma, addr, pvmw.pmd))
				referenced = true;
		} else {
			/* unexpected pmd-mapped page? */
			FUNC1(1);
		}
	}

	if (referenced) {
		FUNC2(page);
		/*
		 * We cleared the referenced bit in a mapping to this page. To
		 * avoid interference with page reclaim, mark it young so that
		 * page_referenced() will return > 0.
		 */
		FUNC6(page);
	}
	return true;
}