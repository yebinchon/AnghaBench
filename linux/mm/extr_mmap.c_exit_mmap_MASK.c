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
struct vm_area_struct {int vm_flags; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {struct vm_area_struct* mmap; scalar_t__ locked_vm; int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_USER_ADDRESS ; 
 int /*<<< orphan*/  MMF_OOM_SKIP ; 
 int /*<<< orphan*/  USER_PGTABLES_CEILING ; 
 int VM_ACCOUNT ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC9 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mmu_gather*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mmu_gather*,struct mm_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 scalar_t__ FUNC17 (struct vm_area_struct*) ; 

void FUNC18(struct mm_struct *mm)
{
	struct mmu_gather tlb;
	struct vm_area_struct *vma;
	unsigned long nr_accounted = 0;

	/* mm's last user has gone, and its about to be pulled down */
	FUNC7(mm);

	if (FUNC13(FUNC6(mm))) {
		/*
		 * Manually reap the mm to free as much memory as possible.
		 * Then, as the oom reaper does, set MMF_OOM_SKIP to disregard
		 * this mm from further consideration.  Taking mm->mmap_sem for
		 * write after setting MMF_OOM_SKIP will guarantee that the oom
		 * reaper will not run on this mm again after mmap_sem is
		 * dropped.
		 *
		 * Nothing can be holding mm->mmap_sem here and the above call
		 * to mmu_notifier_release(mm) ensures mmu notifier callbacks in
		 * __oom_reap_task_mm() will not block.
		 *
		 * This needs to be done before calling munlock_vma_pages_all(),
		 * which clears VM_LOCKED, otherwise the oom reaper cannot
		 * reliably test it.
		 */
		(void)FUNC0(mm);

		FUNC10(MMF_OOM_SKIP, &mm->flags);
		FUNC2(&mm->mmap_sem);
		FUNC15(&mm->mmap_sem);
	}

	if (mm->locked_vm) {
		vma = mm->mmap;
		while (vma) {
			if (vma->vm_flags & VM_LOCKED)
				FUNC8(vma);
			vma = vma->vm_next;
		}
	}

	FUNC1(mm);

	vma = mm->mmap;
	if (!vma)	/* Can happen if dup_mmap() received an OOM */
		return;

	FUNC5();
	FUNC3(mm);
	FUNC12(&tlb, mm, 0, -1);
	/* update_hiwater_rss(mm) here? but nobody should be looking */
	/* Use -1 here to ensure all VMAs in the mm are unmapped */
	FUNC14(&tlb, vma, 0, -1);
	FUNC4(&tlb, vma, FIRST_USER_ADDRESS, USER_PGTABLES_CEILING);
	FUNC11(&tlb, 0, -1);

	/*
	 * Walk the list again, actually closing and freeing it,
	 * with preemption enabled, without holding any MM locks.
	 */
	while (vma) {
		if (vma->vm_flags & VM_ACCOUNT)
			nr_accounted += FUNC17(vma);
		vma = FUNC9(vma);
	}
	FUNC16(nr_accounted);
}