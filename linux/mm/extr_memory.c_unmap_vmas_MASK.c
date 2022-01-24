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
struct vm_area_struct {unsigned long vm_start; struct vm_area_struct* vm_next; int /*<<< orphan*/  vm_mm; } ;
struct mmu_notifier_range {int dummy; } ;
struct mmu_gather {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NOTIFY_UNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 

void FUNC4(struct mmu_gather *tlb,
		struct vm_area_struct *vma, unsigned long start_addr,
		unsigned long end_addr)
{
	struct mmu_notifier_range range;

	FUNC2(&range, MMU_NOTIFY_UNMAP, 0, vma, vma->vm_mm,
				start_addr, end_addr);
	FUNC1(&range);
	for ( ; vma && vma->vm_start < end_addr; vma = vma->vm_next)
		FUNC3(tlb, vma, start_addr, end_addr, NULL);
	FUNC0(&range);
}