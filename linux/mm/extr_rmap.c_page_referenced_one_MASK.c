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
struct vm_area_struct {int vm_flags; } ;
struct page_vma_mapped_walk {unsigned long address; int /*<<< orphan*/  pmd; scalar_t__ pte; struct vm_area_struct* vma; struct page* page; } ;
struct page_referenced_arg {int vm_flags; int /*<<< orphan*/  mapcount; int /*<<< orphan*/  referenced; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_LOCKED ; 
 int VM_SEQ_READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC5 (struct page_vma_mapped_walk*) ; 
 scalar_t__ FUNC6 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC8 (struct page*) ; 

__attribute__((used)) static bool FUNC9(struct page *page, struct vm_area_struct *vma,
			unsigned long address, void *arg)
{
	struct page_referenced_arg *pra = arg;
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
		.address = address,
	};
	int referenced = 0;

	while (FUNC4(&pvmw)) {
		address = pvmw.address;

		if (vma->vm_flags & VM_LOCKED) {
			FUNC5(&pvmw);
			pra->vm_flags |= VM_LOCKED;
			return false; /* To break the loop */
		}

		if (pvmw.pte) {
			if (FUNC7(vma, address,
						pvmw.pte)) {
				/*
				 * Don't treat a reference through
				 * a sequentially read mapping as such.
				 * If the page has been used in another mapping,
				 * we will catch it; if this other mapping is
				 * already gone, the unmap path will have set
				 * PG_referenced or activated the page.
				 */
				if (FUNC3(!(vma->vm_flags & VM_SEQ_READ)))
					referenced++;
			}
		} else if (FUNC0(CONFIG_TRANSPARENT_HUGEPAGE)) {
			if (FUNC6(vma, address,
						pvmw.pmd))
				referenced++;
		} else {
			/* unexpected pmd-mapped page? */
			FUNC1(1);
		}

		pra->mapcount--;
	}

	if (referenced)
		FUNC2(page);
	if (FUNC8(page))
		referenced++;

	if (referenced) {
		pra->referenced++;
		pra->vm_flags |= vma->vm_flags;
	}

	if (!pra->mapcount)
		return false; /* To break the loop */

	return true;
}