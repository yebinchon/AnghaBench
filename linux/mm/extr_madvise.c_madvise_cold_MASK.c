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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,struct mm_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static long FUNC5(struct vm_area_struct *vma,
			struct vm_area_struct **prev,
			unsigned long start_addr, unsigned long end_addr)
{
	struct mm_struct *mm = vma->vm_mm;
	struct mmu_gather tlb;

	*prev = vma;
	if (!FUNC0(vma))
		return -EINVAL;

	FUNC1();
	FUNC4(&tlb, mm, start_addr, end_addr);
	FUNC2(&tlb, vma, start_addr, end_addr);
	FUNC3(&tlb, start_addr, end_addr);

	return 0;
}