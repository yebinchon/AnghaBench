#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {int flags; unsigned long address; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; TYPE_1__* vma; } ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_3__ {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int FAULT_FLAG_WRITE ; 
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned long,int /*<<< orphan*/ *) ; 

void FUNC8(struct vm_fault *vmf, pmd_t orig_pmd)
{
	pmd_t entry;
	unsigned long haddr;
	bool write = vmf->flags & FAULT_FLAG_WRITE;

	vmf->ptl = FUNC0(vmf->vma->vm_mm, vmf->pmd);
	if (FUNC6(!FUNC3(*vmf->pmd, orig_pmd)))
		goto unlock;

	entry = FUNC2(orig_pmd);
	if (write)
		entry = FUNC1(entry);
	haddr = vmf->address & HPAGE_PMD_MASK;
	if (FUNC4(vmf->vma, haddr, vmf->pmd, entry, write))
		FUNC7(vmf->vma, vmf->address, vmf->pmd);

unlock:
	FUNC5(vmf->ptl);
}