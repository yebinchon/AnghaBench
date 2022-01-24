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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  anon_vma; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  THP_FAULT_ALLOC ; 
 int /*<<< orphan*/  THP_FAULT_FALLBACK ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct vm_area_struct*) ; 
 int VM_FAULT_FALLBACK ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_WRITE ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct page*,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vm_fault*,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,struct mem_cgroup*,int,int) ; 
 int FUNC22 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC25 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC26 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC28 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 struct page* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (struct page*) ; 
 int /*<<< orphan*/  FUNC37 (struct page*) ; 
 scalar_t__ FUNC38 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (struct page*) ; 
 scalar_t__ FUNC45 (int) ; 
 int /*<<< orphan*/  FUNC46 (struct page*) ; 
 int /*<<< orphan*/  FUNC47 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

vm_fault_t FUNC48(struct vm_fault *vmf, pmd_t orig_pmd)
{
	struct vm_area_struct *vma = vmf->vma;
	struct page *page = NULL, *new_page;
	struct mem_cgroup *memcg;
	unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
	struct mmu_notifier_range range;
	gfp_t huge_gfp;			/* for allocation and charge */
	vm_fault_t ret = 0;

	vmf->ptl = FUNC29(vma->vm_mm, vmf->pmd);
	FUNC3(!vma->anon_vma, vma);
	if (FUNC15(orig_pmd))
		goto alloc;
	FUNC40(vmf->ptl);
	if (FUNC45(!FUNC33(*vmf->pmd, orig_pmd)))
		goto out_unlock;

	page = FUNC32(orig_pmd);
	FUNC2(!FUNC0(page) || !FUNC1(page), page);
	/*
	 * We can only reuse the page if nobody else maps the huge page or it's
	 * part.
	 */
	if (!FUNC44(page)) {
		FUNC14(page);
		FUNC41(vmf->ptl);
		FUNC17(page);
		FUNC40(vmf->ptl);
		if (FUNC45(!FUNC33(*vmf->pmd, orig_pmd))) {
			FUNC46(page);
			FUNC37(page);
			goto out_unlock;
		}
		FUNC37(page);
	}
	if (FUNC38(page, NULL)) {
		pmd_t entry;
		entry = FUNC31(orig_pmd);
		entry = FUNC19(FUNC30(entry), vma);
		if (FUNC35(vma, haddr, vmf->pmd, entry,  1))
			FUNC47(vma, vmf->address, vmf->pmd);
		ret |= VM_FAULT_WRITE;
		FUNC46(page);
		goto out_unlock;
	}
	FUNC46(page);
	FUNC14(page);
	FUNC41(vmf->ptl);
alloc:
	if (FUNC5(vma) &&
	    !FUNC43()) {
		huge_gfp = FUNC7(vma);
		new_page = FUNC8(huge_gfp, vma, haddr, HPAGE_PMD_ORDER);
	} else
		new_page = NULL;

	if (FUNC16(new_page)) {
		FUNC36(new_page);
	} else {
		if (!page) {
			FUNC42(vma, vmf->pmd, vmf->address);
			ret |= VM_FAULT_FALLBACK;
		} else {
			ret = FUNC13(vmf, orig_pmd, page);
			if (ret & VM_FAULT_OOM) {
				FUNC42(vma, vmf->pmd, vmf->address);
				ret |= VM_FAULT_FALLBACK;
			}
			FUNC37(page);
		}
		FUNC12(THP_FAULT_FALLBACK);
		goto out;
	}

	if (FUNC45(FUNC22(new_page, vma->vm_mm,
					huge_gfp, &memcg, true))) {
		FUNC37(new_page);
		FUNC42(vma, vmf->pmd, vmf->address);
		if (page)
			FUNC37(page);
		ret |= VM_FAULT_FALLBACK;
		FUNC12(THP_FAULT_FALLBACK);
		goto out;
	}

	FUNC12(THP_FAULT_ALLOC);
	FUNC11(memcg, THP_FAULT_ALLOC, 1);

	if (!page)
		FUNC9(new_page, vmf->address, HPAGE_PMD_NR);
	else
		FUNC10(new_page, page, vmf->address,
				    vma, HPAGE_PMD_NR);
	FUNC4(new_page);

	FUNC26(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				haddr, haddr + HPAGE_PMD_SIZE);
	FUNC25(&range);

	FUNC40(vmf->ptl);
	if (page)
		FUNC37(page);
	if (FUNC45(!FUNC33(*vmf->pmd, orig_pmd))) {
		FUNC41(vmf->ptl);
		FUNC20(new_page, memcg, true);
		FUNC37(new_page);
		goto out_mn;
	} else {
		pmd_t entry;
		entry = FUNC23(new_page, vma->vm_page_prot);
		entry = FUNC19(FUNC30(entry), vma);
		FUNC34(vma, haddr, vmf->pmd);
		FUNC27(new_page, vma, haddr, true);
		FUNC21(new_page, memcg, false, true);
		FUNC18(new_page, vma);
		FUNC39(vma->vm_mm, haddr, vmf->pmd, entry);
		FUNC47(vma, vmf->address, vmf->pmd);
		if (!page) {
			FUNC6(vma->vm_mm, MM_ANONPAGES, HPAGE_PMD_NR);
		} else {
			FUNC2(!FUNC1(page), page);
			FUNC28(page, true);
			FUNC37(page);
		}
		ret |= VM_FAULT_WRITE;
	}
	FUNC41(vmf->ptl);
out_mn:
	/*
	 * No need to double call mmu_notifier->invalidate_range() callback as
	 * the above pmdp_huge_clear_flush_notify() did already call it.
	 */
	FUNC24(&range);
out:
	return ret;
out_unlock:
	FUNC41(vmf->ptl);
	return ret;
}