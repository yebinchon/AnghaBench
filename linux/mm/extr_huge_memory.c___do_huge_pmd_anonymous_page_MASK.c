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
struct vm_fault {unsigned long address; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  scalar_t__ pgtable_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  THP_FAULT_ALLOC ; 
 int /*<<< orphan*/  THP_FAULT_FALLBACK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int VM_FAULT_FALLBACK ; 
 int VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_UFFD_MISSING ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,struct mem_cgroup*,int,int) ; 
 scalar_t__ FUNC14 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 
 scalar_t__ FUNC28 (struct vm_area_struct*) ; 

__attribute__((used)) static vm_fault_t FUNC29(struct vm_fault *vmf,
			struct page *page, gfp_t gfp)
{
	struct vm_area_struct *vma = vmf->vma;
	struct mem_cgroup *memcg;
	pgtable_t pgtable;
	unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
	vm_fault_t ret = 0;

	FUNC2(!FUNC0(page), page);

	if (FUNC14(page, vma->vm_mm, gfp, &memcg, true)) {
		FUNC24(page);
		FUNC8(THP_FAULT_FALLBACK);
		return VM_FAULT_FALLBACK;
	}

	pgtable = FUNC22(vma->vm_mm);
	if (FUNC27(!pgtable)) {
		ret = VM_FAULT_OOM;
		goto release;
	}

	FUNC6(page, vmf->address, HPAGE_PMD_NR);
	/*
	 * The memory barrier inside __SetPageUptodate makes sure that
	 * clear_huge_page writes become visible before the set_pmd_at()
	 * write.
	 */
	FUNC3(page);

	vmf->ptl = FUNC19(vma->vm_mm, vmf->pmd);
	if (FUNC27(!FUNC21(*vmf->pmd))) {
		goto unlock_release;
	} else {
		pmd_t entry;

		ret = FUNC5(vma->vm_mm);
		if (ret)
			goto unlock_release;

		/* Deliver the page fault to userland */
		if (FUNC28(vma)) {
			vm_fault_t ret2;

			FUNC26(vmf->ptl);
			FUNC12(page, memcg, true);
			FUNC24(page);
			FUNC23(vma->vm_mm, pgtable);
			ret2 = FUNC9(vmf, VM_UFFD_MISSING);
			FUNC1(ret2 & VM_FAULT_FALLBACK);
			return ret2;
		}

		entry = FUNC15(page, vma->vm_page_prot);
		entry = FUNC11(FUNC20(entry), vma);
		FUNC17(page, vma, haddr, true);
		FUNC13(page, memcg, false, true);
		FUNC10(page, vma);
		FUNC18(vma->vm_mm, vmf->pmd, pgtable);
		FUNC25(vma->vm_mm, haddr, vmf->pmd, entry);
		FUNC4(vma->vm_mm, MM_ANONPAGES, HPAGE_PMD_NR);
		FUNC16(vma->vm_mm);
		FUNC26(vmf->ptl);
		FUNC8(THP_FAULT_ALLOC);
		FUNC7(memcg, THP_FAULT_ALLOC, 1);
	}

	return 0;
unlock_release:
	FUNC26(vmf->ptl);
release:
	if (pgtable)
		FUNC23(vma->vm_mm, pgtable);
	FUNC12(page, memcg, true);
	FUNC24(page);
	return ret;

}