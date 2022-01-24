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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {unsigned long address; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; int /*<<< orphan*/ * pte; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HPAGE_PMD_MASK ; 
 int HPAGE_PMD_NR ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_FAULT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct page*,unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct page**) ; 
 struct page** FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct mem_cgroup*,int,int) ; 
 scalar_t__ FUNC13 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC17 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC18 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (int) ; 

__attribute__((used)) static vm_fault_t FUNC38(struct vm_fault *vmf,
			pmd_t orig_pmd, struct page *page)
{
	struct vm_area_struct *vma = vmf->vma;
	unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
	struct mem_cgroup *memcg;
	pgtable_t pgtable;
	pmd_t _pmd;
	int i;
	vm_fault_t ret = 0;
	struct page **pages;
	struct mmu_notifier_range range;

	pages = FUNC8(HPAGE_PMD_NR, sizeof(struct page *),
			      GFP_KERNEL);
	if (FUNC37(!pages)) {
		ret |= VM_FAULT_OOM;
		goto out;
	}

	for (i = 0; i < HPAGE_PMD_NR; i++) {
		pages[i] = FUNC4(GFP_HIGHUSER_MOVABLE, vma,
					       vmf->address, FUNC22(page));
		if (FUNC37(!pages[i] ||
			     FUNC13(pages[i], vma->vm_mm,
				     GFP_KERNEL, &memcg, false))) {
			if (pages[i])
				FUNC32(pages[i]);
			while (--i >= 0) {
				memcg = (void *)FUNC20(pages[i]);
				FUNC33(pages[i], 0);
				FUNC11(pages[i], memcg,
						false);
				FUNC32(pages[i]);
			}
			FUNC7(pages);
			ret |= VM_FAULT_OOM;
			goto out;
		}
		FUNC33(pages[i], (unsigned long)memcg);
	}

	for (i = 0; i < HPAGE_PMD_NR; i++) {
		FUNC6(pages[i], page + i,
				   haddr + PAGE_SIZE * i, vma);
		FUNC3(pages[i]);
		FUNC5();
	}

	FUNC18(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				haddr, haddr + HPAGE_PMD_SIZE);
	FUNC17(&range);

	vmf->ptl = FUNC24(vma->vm_mm, vmf->pmd);
	if (FUNC37(!FUNC26(*vmf->pmd, orig_pmd)))
		goto out_free_pages;
	FUNC2(!FUNC0(page), page);

	/*
	 * Leave pmd empty until pte is filled note we must notify here as
	 * concurrent CPU thread might write to new page before the call to
	 * mmu_notifier_invalidate_range_end() happens which can lead to a
	 * device seeing memory write in different order than CPU.
	 *
	 * See Documentation/vm/mmu_notifier.rst
	 */
	FUNC27(vma, haddr, vmf->pmd);

	pgtable = FUNC23(vma->vm_mm, vmf->pmd);
	FUNC25(vma->vm_mm, &_pmd, pgtable);

	for (i = 0; i < HPAGE_PMD_NR; i++, haddr += PAGE_SIZE) {
		pte_t entry;
		entry = FUNC14(pages[i], vma->vm_page_prot);
		entry = FUNC10(FUNC28(entry), vma);
		memcg = (void *)FUNC20(pages[i]);
		FUNC33(pages[i], 0);
		FUNC19(pages[i], vmf->vma, haddr, false);
		FUNC12(pages[i], memcg, false, false);
		FUNC9(pages[i], vma);
		vmf->pte = FUNC30(&_pmd, haddr);
		FUNC1(!FUNC29(*vmf->pte));
		FUNC34(vma->vm_mm, haddr, vmf->pte, entry);
		FUNC31(vmf->pte);
	}
	FUNC7(pages);

	FUNC35(); /* make pte visible before pmd */
	FUNC25(vma->vm_mm, vmf->pmd, pgtable);
	FUNC21(page, true);
	FUNC36(vmf->ptl);

	/*
	 * No need to double call mmu_notifier->invalidate_range() callback as
	 * the above pmdp_huge_clear_flush_notify() did already call it.
	 */
	FUNC16(&range);

	ret |= VM_FAULT_WRITE;
	FUNC32(page);

out:
	return ret;

out_free_pages:
	FUNC36(vmf->ptl);
	FUNC15(&range);
	for (i = 0; i < HPAGE_PMD_NR; i++) {
		memcg = (void *)FUNC20(pages[i]);
		FUNC33(pages[i], 0);
		FUNC11(pages[i], memcg, false);
		FUNC32(pages[i]);
	}
	FUNC7(pages);
	goto out;
}