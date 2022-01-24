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
typedef  int vm_fault_t ;
struct vm_fault {unsigned long address; int flags; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_flags; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgtable_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FAULT_FLAG_WRITE ; 
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 int /*<<< orphan*/  THP_FAULT_FALLBACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_FAULT_FALLBACK ; 
 int VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_UFFD_MISSING ; 
 int FUNC1 (struct vm_fault*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vm_area_struct*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (struct vm_area_struct*) ; 

vm_fault_t FUNC22(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	gfp_t gfp;
	struct page *page;
	unsigned long haddr = vmf->address & HPAGE_PMD_MASK;

	if (!FUNC18(vma, haddr))
		return VM_FAULT_FALLBACK;
	if (FUNC20(FUNC4(vma)))
		return VM_FAULT_OOM;
	if (FUNC20(FUNC8(vma, vma->vm_flags)))
		return VM_FAULT_OOM;
	if (!(vmf->flags & FAULT_FLAG_WRITE) &&
			!FUNC9(vma->vm_mm) &&
			FUNC19()) {
		pgtable_t pgtable;
		struct page *zero_page;
		bool set;
		vm_fault_t ret;
		pgtable = FUNC14(vma->vm_mm);
		if (FUNC20(!pgtable))
			return VM_FAULT_OOM;
		zero_page = FUNC10(vma->vm_mm);
		if (FUNC20(!zero_page)) {
			FUNC15(vma->vm_mm, pgtable);
			FUNC6(THP_FAULT_FALLBACK);
			return VM_FAULT_FALLBACK;
		}
		vmf->ptl = FUNC11(vma->vm_mm, vmf->pmd);
		ret = 0;
		set = false;
		if (FUNC12(*vmf->pmd)) {
			ret = FUNC5(vma->vm_mm);
			if (ret) {
				FUNC17(vmf->ptl);
			} else if (FUNC21(vma)) {
				FUNC17(vmf->ptl);
				ret = FUNC7(vmf, VM_UFFD_MISSING);
				FUNC0(ret & VM_FAULT_FALLBACK);
			} else {
				FUNC16(pgtable, vma->vm_mm, vma,
						   haddr, vmf->pmd, zero_page);
				FUNC17(vmf->ptl);
				set = true;
			}
		} else
			FUNC17(vmf->ptl);
		if (!set)
			FUNC15(vma->vm_mm, pgtable);
		return ret;
	}
	gfp = FUNC2(vma);
	page = FUNC3(gfp, vma, haddr, HPAGE_PMD_ORDER);
	if (FUNC20(!page)) {
		FUNC6(THP_FAULT_FALLBACK);
		return VM_FAULT_FALLBACK;
	}
	FUNC13(page);
	return FUNC1(vmf, page, gfp);
}