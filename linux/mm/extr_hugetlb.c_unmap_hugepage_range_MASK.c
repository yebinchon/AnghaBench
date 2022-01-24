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
struct page {int dummy; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,struct mm_struct*,unsigned long,unsigned long) ; 

void FUNC4(struct vm_area_struct *vma, unsigned long start,
			  unsigned long end, struct page *ref_page)
{
	struct mm_struct *mm;
	struct mmu_gather tlb;
	unsigned long tlb_start = start;
	unsigned long tlb_end = end;

	/*
	 * If shared PMDs were possibly used within this vma range, adjust
	 * start/end for worst case tlb flushing.
	 * Note that we can not be sure if PMDs are shared until we try to
	 * unmap pages.  However, we want to make sure TLB flushing covers
	 * the largest possible range.
	 */
	FUNC1(vma, &tlb_start, &tlb_end);

	mm = vma->vm_mm;

	FUNC3(&tlb, mm, tlb_start, tlb_end);
	FUNC0(&tlb, vma, start, end, ref_page);
	FUNC2(&tlb, tlb_start, tlb_end);
}