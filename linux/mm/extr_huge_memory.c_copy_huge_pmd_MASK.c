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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/ * pgtable_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct page* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC25 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_area_struct*) ; 

int FUNC33(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		  pmd_t *dst_pmd, pmd_t *src_pmd, unsigned long addr,
		  struct vm_area_struct *vma)
{
	spinlock_t *dst_ptl, *src_ptl;
	struct page *src_page;
	pmd_t pmd;
	pgtable_t pgtable = NULL;
	int ret = -ENOMEM;

	/* Skip if can be re-fill on fault */
	if (!FUNC32(vma))
		return 0;

	pgtable = FUNC24(dst_mm);
	if (FUNC31(!pgtable))
		goto out;

	dst_ptl = FUNC14(dst_mm, dst_pmd);
	src_ptl = FUNC15(src_mm, src_pmd);
	FUNC28(src_ptl, SINGLE_DEPTH_NESTING);

	ret = -EAGAIN;
	pmd = *src_pmd;

#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
	if (unlikely(is_swap_pmd(pmd))) {
		swp_entry_t entry = pmd_to_swp_entry(pmd);

		VM_BUG_ON(!is_pmd_migration_entry(pmd));
		if (is_write_migration_entry(entry)) {
			make_migration_entry_read(&entry);
			pmd = swp_entry_to_pmd(entry);
			if (pmd_swp_soft_dirty(*src_pmd))
				pmd = pmd_swp_mksoft_dirty(pmd);
			set_pmd_at(src_mm, addr, src_pmd, pmd);
		}
		add_mm_counter(dst_mm, MM_ANONPAGES, HPAGE_PMD_NR);
		mm_inc_nr_ptes(dst_mm);
		pgtable_trans_huge_deposit(dst_mm, dst_pmd, pgtable);
		set_pmd_at(dst_mm, addr, dst_pmd, pmd);
		ret = 0;
		goto out_unlock;
	}
#endif

	if (FUNC31(!FUNC21(pmd))) {
		FUNC25(dst_mm, pgtable);
		goto out_unlock;
	}
	/*
	 * When page table lock is held, the huge zero pmd should not be
	 * under splitting since we don't split the page itself, only pmd to
	 * a page table.
	 */
	if (FUNC5(pmd)) {
		struct page *zero_page;
		/*
		 * get_huge_zero_page() will never allocate a new page here,
		 * since we already have a zero page to copy. It just takes a
		 * reference.
		 */
		zero_page = FUNC10(dst_mm);
		FUNC26(pgtable, dst_mm, vma, addr, dst_pmd,
				zero_page);
		ret = 0;
		goto out_unlock;
	}

	src_page = FUNC17(pmd);
	FUNC2(!FUNC0(src_page), src_page);
	FUNC4(src_page);
	FUNC12(src_page, true);
	FUNC3(dst_mm, MM_ANONPAGES, HPAGE_PMD_NR);
	FUNC11(dst_mm);
	FUNC13(dst_mm, dst_pmd, pgtable);

	FUNC23(src_mm, addr, src_pmd);
	pmd = FUNC16(FUNC22(pmd));
	FUNC27(dst_mm, addr, dst_pmd, pmd);

	ret = 0;
out_unlock:
	FUNC29(src_ptl);
	FUNC29(dst_ptl);
out:
	return ret;
}