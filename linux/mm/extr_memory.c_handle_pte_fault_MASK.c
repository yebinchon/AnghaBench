#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int flags; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; TYPE_1__* vma; int /*<<< orphan*/  orig_pte; int /*<<< orphan*/ * pmd; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_6__ {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_1__*) ; 
 scalar_t__ FUNC25 (TYPE_1__*) ; 

__attribute__((used)) static vm_fault_t FUNC26(struct vm_fault *vmf)
{
	pte_t entry;

	if (FUNC22(FUNC8(*vmf->pmd))) {
		/*
		 * Leave __pte_alloc() until later: because vm_ops->fault may
		 * want to allocate huge page, and if we expose page table
		 * for an instant, it will be difficult to retract from
		 * concurrent faults and from rmap lookups.
		 */
		vmf->pte = NULL;
	} else {
		/* See comment in pte_alloc_one_map() */
		if (FUNC7(vmf->pmd))
			return 0;
		/*
		 * A regular pmd is established and it can't morph into a huge
		 * pmd from under us anymore at this point because we hold the
		 * mmap_sem read mode and khugepaged takes it in write mode.
		 * So now it's safe to run pte_offset_map().
		 */
		vmf->pte = FUNC13(vmf->pmd, vmf->address);
		vmf->orig_pte = *vmf->pte;

		/*
		 * some architectures can have larger ptes than wordsize,
		 * e.g.ppc44x-defconfig has CONFIG_PTE_64BIT=y and
		 * CONFIG_32BIT=y, so READ_ONCE cannot guarantee atomic
		 * accesses.  The code below just needs a consistent view
		 * for the ifs and we later double check anyway with the
		 * ptl lock held. So here a barrier will do.
		 */
		FUNC0();
		if (FUNC12(vmf->orig_pte)) {
			FUNC17(vmf->pte);
			vmf->pte = NULL;
		}
	}

	if (!vmf->pte) {
		if (FUNC25(vmf->vma))
			return FUNC1(vmf);
		else
			return FUNC2(vmf);
	}

	if (!FUNC14(vmf->orig_pte))
		return FUNC4(vmf);

	if (FUNC15(vmf->orig_pte) && FUNC24(vmf->vma))
		return FUNC3(vmf);

	vmf->ptl = FUNC9(vmf->vma->vm_mm, vmf->pmd);
	FUNC21(vmf->ptl);
	entry = vmf->orig_pte;
	if (FUNC22(!FUNC16(*vmf->pte, entry)))
		goto unlock;
	if (vmf->flags & FAULT_FLAG_WRITE) {
		if (!FUNC19(entry))
			return FUNC5(vmf);
		entry = FUNC10(entry);
	}
	entry = FUNC11(entry);
	if (FUNC20(vmf->vma, vmf->address, vmf->pte, entry,
				vmf->flags & FAULT_FLAG_WRITE)) {
		FUNC23(vmf->vma, vmf->address, vmf->pte);
	} else {
		/*
		 * This is needed only for protection faults but the arch code
		 * is not yet telling us if this is a protection fault or not.
		 * This still avoids useless tlb flushes for .text page faults
		 * with threads.
		 */
		if (vmf->flags & FAULT_FLAG_WRITE)
			FUNC6(vmf->vma, vmf->address);
	}
unlock:
	FUNC18(vmf->pte, vmf->ptl);
	return 0;
}