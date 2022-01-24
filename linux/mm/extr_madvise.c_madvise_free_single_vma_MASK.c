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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct mm_struct* vm_mm; } ;
struct mmu_notifier_range {scalar_t__ start; scalar_t__ end; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  madvise_free_walk_ops ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_gather*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_gather*,struct mm_struct*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,struct mmu_gather*) ; 

__attribute__((used)) static int FUNC13(struct vm_area_struct *vma,
			unsigned long start_addr, unsigned long end_addr)
{
	struct mm_struct *mm = vma->vm_mm;
	struct mmu_notifier_range range;
	struct mmu_gather tlb;

	/* MADV_FREE works for only anon vma at the moment */
	if (!FUNC11(vma))
		return -EINVAL;

	range.start = FUNC1(vma->vm_start, start_addr);
	if (range.start >= vma->vm_end)
		return -EINVAL;
	range.end = FUNC2(vma->vm_end, end_addr);
	if (range.end <= vma->vm_start)
		return -EINVAL;
	FUNC5(&range, MMU_NOTIFY_CLEAR, 0, vma, mm,
				range.start, range.end);

	FUNC0();
	FUNC8(&tlb, mm, range.start, range.end);
	FUNC10(mm);

	FUNC4(&range);
	FUNC9(&tlb, vma);
	FUNC12(vma->vm_mm, range.start, range.end,
			&madvise_free_walk_ops, &tlb);
	FUNC6(&tlb, vma);
	FUNC3(&range);
	FUNC7(&tlb, range.start, range.end);

	return 0;
}