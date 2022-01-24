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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PFN_DEV ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC7(struct vm_area_struct *vma, unsigned long addr,
			unsigned long pfn, pgprot_t pgprot)
{
	/*
	 * Technically, architectures with pte_special can avoid all these
	 * restrictions (same for remap_pfn_range).  However we would like
	 * consistency in testing and feature parity among all, so we should
	 * try to keep these invariants in place for everybody.
	 */
	FUNC0(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)));
	FUNC0((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
						(VM_PFNMAP|VM_MIXEDMAP));
	FUNC0((vma->vm_flags & VM_PFNMAP) && FUNC3(vma->vm_flags));
	FUNC0((vma->vm_flags & VM_MIXEDMAP) && FUNC5(pfn));

	if (addr < vma->vm_start || addr >= vma->vm_end)
		return VM_FAULT_SIGBUS;

	if (!FUNC4(pfn, pgprot))
		return VM_FAULT_SIGBUS;

	FUNC6(vma, &pgprot, FUNC1(pfn, PFN_DEV));

	return FUNC2(vma, addr, FUNC1(pfn, PFN_DEV), pgprot,
			false);
}