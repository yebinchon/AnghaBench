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
struct vma_swap_readahead {int win; unsigned int nr_pte; unsigned int offset; int /*<<< orphan*/ * ptes; int /*<<< orphan*/  member_0; } ;
struct vm_fault {int /*<<< orphan*/  address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_RA ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_fault*,struct vma_swap_readahead*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC15(swp_entry_t fentry, gfp_t gfp_mask,
				       struct vm_fault *vmf)
{
	struct blk_plug plug;
	struct vm_area_struct *vma = vmf->vma;
	struct page *page;
	pte_t *pte, pentry;
	swp_entry_t entry;
	unsigned int i;
	bool page_allocated;
	struct vma_swap_readahead ra_info = {0,};

	FUNC12(vmf, &ra_info);
	if (ra_info.win == 1)
		goto skip;

	FUNC3(&plug);
	for (i = 0, pte = ra_info.ptes; i < ra_info.nr_pte;
	     i++, pte++) {
		pentry = *pte;
		if (FUNC7(pentry))
			continue;
		if (FUNC8(pentry))
			continue;
		entry = FUNC9(pentry);
		if (FUNC14(FUNC6(entry)))
			continue;
		page = FUNC1(entry, gfp_mask, vma,
					       vmf->address, &page_allocated);
		if (!page)
			continue;
		if (page_allocated) {
			FUNC13(page, false);
			if (i != ra_info.offset) {
				FUNC0(page);
				FUNC4(SWAP_RA);
			}
		}
		FUNC10(page);
	}
	FUNC2(&plug);
	FUNC5();
skip:
	return FUNC11(fentry, gfp_mask, vma, vmf->address,
				     ra_info.win == 1);
}