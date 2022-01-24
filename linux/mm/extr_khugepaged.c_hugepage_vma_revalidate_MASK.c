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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_flags; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int SCAN_ADDRESS_RANGE ; 
 int SCAN_ANY_PROCESS ; 
 int SCAN_VMA_CHECK ; 
 int SCAN_VMA_NULL ; 
 struct vm_area_struct* FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mm_struct *mm, unsigned long address,
		struct vm_area_struct **vmap)
{
	struct vm_area_struct *vma;
	unsigned long hstart, hend;

	if (FUNC3(FUNC2(mm)))
		return SCAN_ANY_PROCESS;

	*vmap = vma = FUNC0(mm, address);
	if (!vma)
		return SCAN_VMA_NULL;

	hstart = (vma->vm_start + ~HPAGE_PMD_MASK) & HPAGE_PMD_MASK;
	hend = vma->vm_end & HPAGE_PMD_MASK;
	if (address < hstart || address + HPAGE_PMD_SIZE > hend)
		return SCAN_ADDRESS_RANGE;
	if (!FUNC1(vma, vma->vm_flags))
		return SCAN_VMA_CHECK;
	return 0;
}