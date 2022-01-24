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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct vm_area_struct*) ; 

int FUNC20(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, pgprot_t newprot, int prot_numa)
{
	struct mm_struct *mm = vma->vm_mm;
	spinlock_t *ptl;
	pmd_t entry;
	bool preserve_write;
	int ret;

	ptl = FUNC2(pmd, vma);
	if (!ptl)
		return 0;

	preserve_write = prot_numa && FUNC14(*pmd);
	ret = 1;

#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
	if (is_swap_pmd(*pmd)) {
		swp_entry_t entry = pmd_to_swp_entry(*pmd);

		VM_BUG_ON(!is_pmd_migration_entry(*pmd));
		if (is_write_migration_entry(entry)) {
			pmd_t newpmd;
			/*
			 * A protection check is difficult so
			 * just be safe and disable write
			 */
			make_migration_entry_read(&entry);
			newpmd = swp_entry_to_pmd(entry);
			if (pmd_swp_soft_dirty(*pmd))
				newpmd = pmd_swp_mksoft_dirty(newpmd);
			set_pmd_at(mm, addr, pmd, newpmd);
		}
		goto unlock;
	}
#endif

	/*
	 * Avoid trapping faults against the zero page. The read-only
	 * data is likely to be read-cached on the local CPU and
	 * local/remote hits to the zero page are not interesting.
	 */
	if (prot_numa && FUNC3(*pmd))
		goto unlock;

	if (prot_numa && FUNC10(*pmd))
		goto unlock;

	/*
	 * In case prot_numa, we are under down_read(mmap_sem). It's critical
	 * to not clear pmd intermittently to avoid race with MADV_DONTNEED
	 * which is also under down_read(mmap_sem):
	 *
	 *	CPU0:				CPU1:
	 *				change_huge_pmd(prot_numa=1)
	 *				 pmdp_huge_get_and_clear_notify()
	 * madvise_dontneed()
	 *  zap_pmd_range()
	 *   pmd_trans_huge(*pmd) == 0 (without ptl)
	 *   // skip the pmd
	 *				 set_pmd_at();
	 *				 // pmd is re-established
	 *
	 * The race makes MADV_DONTNEED miss the huge pmd and don't clear it
	 * which may break userspace.
	 *
	 * pmdp_invalidate() is required to make sure we don't miss
	 * dirty/young flags set by hardware.
	 */
	entry = FUNC15(vma, addr, pmd);

	entry = FUNC9(entry, newprot);
	if (preserve_write)
		entry = FUNC8(entry);
	ret = HPAGE_PMD_NR;
	FUNC16(mm, addr, pmd, entry);
	FUNC0(FUNC19(vma) && !preserve_write && FUNC14(entry));
unlock:
	FUNC17(ptl);
	return ret;
}