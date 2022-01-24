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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long HPAGE_PMD_SIZE ; 
 scalar_t__ PMD_SIZE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

bool FUNC16(struct vm_area_struct *vma, unsigned long old_addr,
		  unsigned long new_addr, unsigned long old_end,
		  pmd_t *old_pmd, pmd_t *new_pmd)
{
	spinlock_t *old_ptl, *new_ptl;
	pmd_t pmd;
	struct mm_struct *mm = vma->vm_mm;
	bool force_flush = false;

	if ((old_addr & ~HPAGE_PMD_MASK) ||
	    (new_addr & ~HPAGE_PMD_MASK) ||
	    old_end - old_addr < HPAGE_PMD_SIZE)
		return false;

	/*
	 * The destination pmd shouldn't be established, free_pgtables()
	 * should have release it.
	 */
	if (FUNC1(!FUNC9(*new_pmd))) {
		FUNC0(FUNC11(*new_pmd));
		return false;
	}

	/*
	 * We don't have to worry about the ordering of src and dst
	 * ptlocks because exclusive mmap_sem prevents deadlock.
	 */
	old_ptl = FUNC2(old_pmd, vma);
	if (old_ptl) {
		new_ptl = FUNC7(mm, new_pmd);
		if (new_ptl != old_ptl)
			FUNC14(new_ptl, SINGLE_DEPTH_NESTING);
		pmd = FUNC12(mm, old_addr, old_pmd);
		if (FUNC10(pmd))
			force_flush = true;
		FUNC0(!FUNC9(*new_pmd));

		if (FUNC8(new_ptl, old_ptl, vma)) {
			pgtable_t pgtable;
			pgtable = FUNC6(mm, old_pmd);
			FUNC5(mm, new_pmd, pgtable);
		}
		pmd = FUNC4(pmd);
		FUNC13(mm, new_addr, new_pmd, pmd);
		if (force_flush)
			FUNC3(vma, old_addr, old_addr + PMD_SIZE);
		if (new_ptl != old_ptl)
			FUNC15(new_ptl);
		FUNC15(old_ptl);
		return true;
	}
	return false;
}