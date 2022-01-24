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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct page_vma_mapped_walk {int flags; int /*<<< orphan*/  page; int /*<<< orphan*/ * pte; } ;

/* Variables and functions */
 int PVMW_MIGRATION ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct page_vma_mapped_walk *pvmw)
{
	unsigned long pfn;

	if (pvmw->flags & PVMW_MIGRATION) {
		swp_entry_t entry;
		if (!FUNC3(*pvmw->pte))
			return false;
		entry = FUNC8(*pvmw->pte);

		if (!FUNC2(entry))
			return false;

		pfn = FUNC4(entry);
	} else if (FUNC3(*pvmw->pte)) {
		swp_entry_t entry;

		/* Handle un-addressable ZONE_DEVICE memory */
		entry = FUNC8(*pvmw->pte);
		if (!FUNC1(entry))
			return false;

		pfn = FUNC0(entry);
	} else {
		if (!FUNC7(*pvmw->pte))
			return false;

		pfn = FUNC6(*pvmw->pte);
	}

	return FUNC5(pvmw->page, pfn);
}