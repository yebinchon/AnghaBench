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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct page_vma_mapped_walk {int flags; int /*<<< orphan*/  ptl; int /*<<< orphan*/  pmd; TYPE_1__* vma; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int PVMW_MIGRATION ; 
 int PVMW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct page_vma_mapped_walk *pvmw)
{
	pvmw->pte = FUNC3(pvmw->pmd, pvmw->address);
	if (!(pvmw->flags & PVMW_SYNC)) {
		if (pvmw->flags & PVMW_MIGRATION) {
			if (!FUNC1(*pvmw->pte))
				return false;
		} else {
			/*
			 * We get here when we are trying to unmap a private
			 * device page from the process address space. Such
			 * page is not CPU accessible and thus is mapped as
			 * a special swap entry, nonetheless it still does
			 * count as a valid regular mapping for the page (and
			 * is accounted as such in page maps count).
			 *
			 * So handle this special case as if it was a normal
			 * page mapping ie lock CPU page table and returns
			 * true.
			 *
			 * For more details on device private memory see HMM
			 * (include/linux/hmm.h or mm/hmm.c).
			 */
			if (FUNC1(*pvmw->pte)) {
				swp_entry_t entry;

				/* Handle un-addressable ZONE_DEVICE memory */
				entry = FUNC5(*pvmw->pte);
				if (!FUNC0(entry))
					return false;
			} else if (!FUNC4(*pvmw->pte))
				return false;
		}
	}
	pvmw->ptl = FUNC2(pvmw->vma->vm_mm, pvmw->pmd);
	FUNC6(pvmw->ptl);
	return true;
}