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
struct zap_details {int dummy; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_notifier_range {int /*<<< orphan*/  end; } ;
struct mmu_gather {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_gather*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,struct zap_details*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct vm_area_struct *vma, unsigned long address,
		unsigned long size, struct zap_details *details)
{
	struct mmu_notifier_range range;
	struct mmu_gather tlb;

	FUNC0();
	FUNC3(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				address, address + size);
	FUNC5(&tlb, vma->vm_mm, address, range.end);
	FUNC7(vma->vm_mm);
	FUNC2(&range);
	FUNC6(&tlb, vma, address, range.end, details);
	FUNC1(&range);
	FUNC4(&tlb, address, range.end);
}