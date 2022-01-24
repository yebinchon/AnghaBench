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
struct vm_fault {unsigned long address; int /*<<< orphan*/ * pte; struct vm_area_struct* vma; int /*<<< orphan*/  orig_pte; int /*<<< orphan*/  pgoff; int /*<<< orphan*/ * pmd; int /*<<< orphan*/  flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_FLAG_ALLOW_RETRY ; 
 int HPAGE_PMD_NR ; 
 int PAGE_SIZE ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_RETRY ; 
 int FUNC0 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mm_struct*,unsigned long,struct vm_area_struct**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 void* FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,int,int,int) ; 

__attribute__((used)) static bool FUNC9(struct mm_struct *mm,
					struct vm_area_struct *vma,
					unsigned long address, pmd_t *pmd,
					int referenced)
{
	int swapped_in = 0;
	vm_fault_t ret = 0;
	struct vm_fault vmf = {
		.vma = vma,
		.address = address,
		.flags = FAULT_FLAG_ALLOW_RETRY,
		.pmd = pmd,
		.pgoff = FUNC4(vma, address),
	};

	/* we only decide to swapin, if there is enough young ptes */
	if (referenced < HPAGE_PMD_NR/2) {
		FUNC8(mm, swapped_in, referenced, 0);
		return false;
	}
	vmf.pte = FUNC6(pmd, address);
	for (; vmf.address < address + HPAGE_PMD_NR*PAGE_SIZE;
			vmf.pte++, vmf.address += PAGE_SIZE) {
		vmf.orig_pte = *vmf.pte;
		if (!FUNC3(vmf.orig_pte))
			continue;
		swapped_in++;
		ret = FUNC0(&vmf);

		/* do_swap_page returns VM_FAULT_RETRY with released mmap_sem */
		if (ret & VM_FAULT_RETRY) {
			FUNC1(&mm->mmap_sem);
			if (FUNC2(mm, address, &vmf.vma)) {
				/* vma is no longer available, don't continue to swapin */
				FUNC8(mm, swapped_in, referenced, 0);
				return false;
			}
			/* check if the pmd is still valid */
			if (FUNC5(mm, address) != pmd) {
				FUNC8(mm, swapped_in, referenced, 0);
				return false;
			}
		}
		if (ret & VM_FAULT_ERROR) {
			FUNC8(mm, swapped_in, referenced, 0);
			return false;
		}
		/* pte is unmapped now, we need to map it */
		vmf.pte = FUNC6(pmd, vmf.address);
	}
	vmf.pte--;
	FUNC7(vmf.pte);
	FUNC8(mm, swapped_in, referenced, 1);
	return true;
}