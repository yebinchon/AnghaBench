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
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int /*<<< orphan*/  _mapcount; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HPAGE_PMD_MASK ; 
 int HPAGE_PMD_NR ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  NR_ANON_THPS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  THP_SPLIT_PMD ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 void FUNC12 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct page*,int) ; 
 struct page* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 struct page* FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int FUNC41 (int /*<<< orphan*/ ) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC48 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (struct page*) ; 
 int /*<<< orphan*/  FUNC53 (struct page*) ; 
 int /*<<< orphan*/  FUNC54 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 () ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC58 (int) ; 
 int /*<<< orphan*/  FUNC59 (struct vm_area_struct*) ; 
 scalar_t__ FUNC60 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC61 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC62(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long haddr, bool freeze)
{
	struct mm_struct *mm = vma->vm_mm;
	struct page *page;
	pgtable_t pgtable;
	pmd_t old_pmd, _pmd;
	bool young, write, soft_dirty, pmd_migration = false;
	unsigned long addr;
	int i;

	FUNC8(haddr & ~HPAGE_PMD_MASK);
	FUNC10(vma->vm_start > haddr, vma);
	FUNC10(vma->vm_end < haddr + HPAGE_PMD_SIZE, vma);
	FUNC8(!FUNC22(*pmd) && !FUNC40(*pmd)
				&& !FUNC33(*pmd));

	FUNC20(THP_SPLIT_PMD);

	if (!FUNC59(vma)) {
		_pmd = FUNC43(vma, haddr, pmd);
		/*
		 * We are going to unmap this huge page. So
		 * just go ahead and zap it
		 */
		if (FUNC14())
			FUNC61(mm, pmd);
		if (FUNC60(vma))
			return;
		page = FUNC35(_pmd);
		if (!FUNC1(page) && FUNC34(_pmd))
			FUNC53(page);
		if (!FUNC2(page) && FUNC42(_pmd))
			FUNC5(page);
		FUNC30(page, true);
		FUNC52(page);
		FUNC13(mm, FUNC27(page), -HPAGE_PMD_NR);
		return;
	} else if (FUNC21(*pmd)) {
		/*
		 * FIXME: Do we want to invalidate secondary mmu by calling
		 * mmu_notifier_invalidate_range() see comments below inside
		 * __split_huge_pmd() ?
		 *
		 * We are going from a zero huge page write protected to zero
		 * small page also write protected so it does not seems useful
		 * to invalidate secondary mmu at this time.
		 */
		return FUNC12(vma, haddr, pmd);
	}

	/*
	 * Up to this point the pmd is present and huge and userland has the
	 * whole access to the hugepage during the split (which happens in
	 * place). If we overwrite the pmd with the not-huge version pointing
	 * to the pte here (which of course we could if all CPUs were bug
	 * free), userland could trigger a small page size TLB miss on the
	 * small sized TLB while the hugepage TLB entry is still established in
	 * the huge TLB. Some CPU doesn't like that.
	 * See http://support.amd.com/us/Processor_TechDocs/41322.pdf, Erratum
	 * 383 on page 93. Intel should be safe but is also warns that it's
	 * only safe if the permission and cache attributes of the two entries
	 * loaded in the two TLB is identical (which should be the case here).
	 * But it is generally safer to never allow small and huge TLB entries
	 * for the same virtual address to be loaded simultaneously. So instead
	 * of doing "pmd_populate(); flush_pmd_tlb_range();" we first mark the
	 * current pmd notpresent (atomically because here the pmd_trans_huge
	 * must remain set at all times on the pmd until the split is complete
	 * for this pmd), then we flush the SMP TLB and finally we write the
	 * non-huge version of the pmd entry with pmd_populate.
	 */
	old_pmd = FUNC44(vma, haddr, pmd);

	pmd_migration = FUNC22(old_pmd);
	if (FUNC58(pmd_migration)) {
		swp_entry_t entry;

		entry = FUNC39(old_pmd);
		page = FUNC31(FUNC57(entry));
		write = FUNC23(entry);
		young = false;
		soft_dirty = FUNC38(old_pmd);
	} else {
		page = FUNC35(old_pmd);
		if (FUNC34(old_pmd))
			FUNC4(page);
		write = FUNC41(old_pmd);
		young = FUNC42(old_pmd);
		soft_dirty = FUNC37(old_pmd);
	}
	FUNC9(!FUNC28(page), page);
	FUNC29(page, HPAGE_PMD_NR - 1);

	/*
	 * Withdraw the table only after we mark the pmd entry invalid.
	 * This's critical for some architectures (Power).
	 */
	pgtable = FUNC32(mm, pmd);
	FUNC36(mm, &_pmd, pgtable);

	for (i = 0, addr = haddr; i < HPAGE_PMD_NR; i++, addr += PAGE_SIZE) {
		pte_t entry, *pte;
		/*
		 * Note that NUMA hinting access restrictions are not
		 * transferred to avoid any possibility of altering
		 * permissions across VMAs.
		 */
		if (freeze || pmd_migration) {
			swp_entry_t swp_entry;
			swp_entry = FUNC24(page + i, write);
			entry = FUNC56(swp_entry);
			if (soft_dirty)
				entry = FUNC49(entry);
		} else {
			entry = FUNC26(page + i, FUNC3(vma->vm_page_prot));
			entry = FUNC25(entry, vma);
			if (!write)
				entry = FUNC51(entry);
			if (!young)
				entry = FUNC45(entry);
			if (soft_dirty)
				entry = FUNC46(entry);
		}
		pte = FUNC48(&_pmd, addr);
		FUNC0(!FUNC47(*pte));
		FUNC54(mm, addr, pte, entry);
		FUNC17(&page[i]._mapcount);
		FUNC50(pte);
	}

	/*
	 * Set PG_double_map before dropping compound_mapcount to avoid
	 * false-negative page_mapped().
	 */
	if (FUNC18(page) > 1 && !FUNC7(page)) {
		for (i = 0; i < HPAGE_PMD_NR; i++)
			FUNC17(&page[i]._mapcount);
	}

	if (FUNC15(-1, FUNC19(page))) {
		/* Last compound_mapcount is gone. */
		FUNC11(page, NR_ANON_THPS);
		if (FUNC6(page)) {
			/* No need in mapcount reference anymore */
			for (i = 0; i < HPAGE_PMD_NR; i++)
				FUNC16(&page[i]._mapcount);
		}
	}

	FUNC55(); /* make pte visible before pmd */
	FUNC36(mm, pmd, pgtable);

	if (freeze) {
		for (i = 0; i < HPAGE_PMD_NR; i++) {
			FUNC30(page + i, false);
			FUNC52(page + i);
		}
	}
}