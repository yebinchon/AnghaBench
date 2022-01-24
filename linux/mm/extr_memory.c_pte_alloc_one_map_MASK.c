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
struct vm_fault {int /*<<< orphan*/  ptl; int /*<<< orphan*/  address; int /*<<< orphan*/ * pmd; int /*<<< orphan*/  pte; int /*<<< orphan*/ * prealloc_pte; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static vm_fault_t FUNC9(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;

	if (!FUNC3(*vmf->pmd))
		goto map_pte;
	if (vmf->prealloc_pte) {
		vmf->ptl = FUNC2(vma->vm_mm, vmf->pmd);
		if (FUNC8(!FUNC3(*vmf->pmd))) {
			FUNC7(vmf->ptl);
			goto map_pte;
		}

		FUNC0(vma->vm_mm);
		FUNC4(vma->vm_mm, vmf->pmd, vmf->prealloc_pte);
		FUNC7(vmf->ptl);
		vmf->prealloc_pte = NULL;
	} else if (FUNC8(FUNC5(vma->vm_mm, vmf->pmd))) {
		return VM_FAULT_OOM;
	}
map_pte:
	/*
	 * If a huge pmd materialized under us just retry later.  Use
	 * pmd_trans_unstable() via pmd_devmap_trans_unstable() instead of
	 * pmd_trans_huge() to ensure the pmd didn't become pmd_trans_huge
	 * under us and then back to pmd_none, as a result of MADV_DONTNEED
	 * running immediately after a huge pmd fault in a different thread of
	 * this mm, in turn leading to a misleading pmd_trans_huge() retval.
	 * All we have to ensure is that it is a regular pmd that we can walk
	 * with pte_offset_map() and we can do that through an atomic read in
	 * C, which is what pmd_trans_unstable() provides.
	 */
	if (FUNC1(vmf->pmd))
		return VM_FAULT_NOPAGE;

	/*
	 * At this point we know that our vmf->pmd points to a page of ptes
	 * and it cannot become pmd_none(), pmd_devmap() or pmd_trans_huge()
	 * for the duration of the fault.  If a racing MADV_DONTNEED runs and
	 * we zap the ptes pointed to by our vmf->pmd, the vmf->ptl will still
	 * be valid and we will re-check to make sure the vmf->pte isn't
	 * pte_none() under vmf->ptl protection when we return to
	 * alloc_set_pte().
	 */
	vmf->pte = FUNC6(vma->vm_mm, vmf->pmd, vmf->address,
			&vmf->ptl);
	return 0;
}