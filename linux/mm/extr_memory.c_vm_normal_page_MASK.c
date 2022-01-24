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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_pgoff; TYPE_1__* vm_ops; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {struct page* (* find_special_page ) (struct vm_area_struct*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_PTE_SPECIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 unsigned long highest_memmap_pfn ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 

struct page *FUNC12(struct vm_area_struct *vma, unsigned long addr,
			    pte_t pte)
{
	unsigned long pfn = FUNC8(pte);

	if (FUNC0(CONFIG_ARCH_HAS_PTE_SPECIAL)) {
		if (FUNC3(!FUNC9(pte)))
			goto check_pfn;
		if (vma->vm_ops && vma->vm_ops->find_special_page)
			return vma->vm_ops->find_special_page(vma, addr);
		if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
			return NULL;
		if (FUNC2(pfn))
			return NULL;
		if (FUNC7(pte))
			return NULL;

		FUNC6(vma, addr, pte, NULL);
		return NULL;
	}

	/* !CONFIG_ARCH_HAS_PTE_SPECIAL case follows: */

	if (FUNC11(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP))) {
		if (vma->vm_flags & VM_MIXEDMAP) {
			if (!FUNC5(pfn))
				return NULL;
			goto out;
		} else {
			unsigned long off;
			off = (addr - vma->vm_start) >> PAGE_SHIFT;
			if (pfn == vma->vm_pgoff + off)
				return NULL;
			if (!FUNC1(vma->vm_flags))
				return NULL;
		}
	}

	if (FUNC2(pfn))
		return NULL;

check_pfn:
	if (FUNC11(pfn > highest_memmap_pfn)) {
		FUNC6(vma, addr, pte, NULL);
		return NULL;
	}

	/*
	 * NOTE! We still have PageReserved() pages in the page tables.
	 * eg. VDSO mappings can cause them to exist.
	 */
out:
	return FUNC4(pfn);
}