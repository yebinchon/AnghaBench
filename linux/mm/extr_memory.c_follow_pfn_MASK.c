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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int EINVAL ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct vm_area_struct *vma, unsigned long address,
	unsigned long *pfn)
{
	int ret = -EINVAL;
	spinlock_t *ptl;
	pte_t *ptep;

	if (!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
		return ret;

	ret = FUNC0(vma->vm_mm, address, &ptep, &ptl);
	if (ret)
		return ret;
	*pfn = FUNC1(*ptep);
	FUNC2(ptep, ptl);
	return 0;
}