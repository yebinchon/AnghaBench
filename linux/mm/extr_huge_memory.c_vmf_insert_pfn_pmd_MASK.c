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
struct vm_fault {unsigned long address; int /*<<< orphan*/  pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
typedef  int /*<<< orphan*/ * pgtable_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PMD_MASK ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC7(struct vm_fault *vmf, pfn_t pfn, bool write)
{
	unsigned long addr = vmf->address & PMD_MASK;
	struct vm_area_struct *vma = vmf->vma;
	pgprot_t pgprot = vma->vm_page_prot;
	pgtable_t pgtable = NULL;

	/*
	 * If we had pmd_special, we could avoid all these restrictions,
	 * but we need to be consistent with PTEs and architectures that
	 * can't support a 'special' bit.
	 */
	FUNC0(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
			!FUNC4(pfn));
	FUNC0((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
						(VM_PFNMAP|VM_MIXEDMAP));
	FUNC0((vma->vm_flags & VM_PFNMAP) && FUNC3(vma->vm_flags));

	if (addr < vma->vm_start || addr >= vma->vm_end)
		return VM_FAULT_SIGBUS;

	if (FUNC1()) {
		pgtable = FUNC5(vma->vm_mm);
		if (!pgtable)
			return VM_FAULT_OOM;
	}

	FUNC6(vma, &pgprot, pfn);

	FUNC2(vma, addr, vmf->pmd, pfn, pgprot, write, pgtable);
	return VM_FAULT_NOPAGE;
}