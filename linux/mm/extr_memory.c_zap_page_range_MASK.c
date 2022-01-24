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
struct vm_area_struct {scalar_t__ vm_start; struct vm_area_struct* vm_next; int /*<<< orphan*/  vm_mm; } ;
struct mmu_notifier_range {scalar_t__ end; } ;
struct mmu_gather {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_gather*,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,struct vm_area_struct*,unsigned long,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct vm_area_struct *vma, unsigned long start,
		unsigned long size)
{
	struct mmu_notifier_range range;
	struct mmu_gather tlb;

	FUNC0();
	FUNC3(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				start, start + size);
	FUNC5(&tlb, vma->vm_mm, start, range.end);
	FUNC7(vma->vm_mm);
	FUNC2(&range);
	for ( ; vma && vma->vm_start < range.end; vma = vma->vm_next)
		FUNC6(&tlb, vma, start, range.end, NULL);
	FUNC1(&range);
	FUNC4(&tlb, start, range.end);
}