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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_notifier_range {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_UNMAP ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct vm_area_struct*) ; 

unsigned long FUNC17(struct vm_area_struct *vma,
		unsigned long old_addr, struct vm_area_struct *new_vma,
		unsigned long new_addr, unsigned long len,
		bool need_rmap_locks)
{
	unsigned long extent, next, old_end;
	struct mmu_notifier_range range;
	pmd_t *old_pmd, *new_pmd;

	old_end = old_addr + len;
	FUNC3(vma, old_addr, old_end);

	FUNC8(&range, MMU_NOTIFY_UNMAP, 0, vma, vma->vm_mm,
				old_addr, old_end);
	FUNC7(&range);

	for (; old_addr < old_end; old_addr += extent, new_addr += extent) {
		FUNC1();
		next = (old_addr + PMD_SIZE) & PMD_MASK;
		/* even if next overflowed, extent below will be ok */
		extent = next - old_addr;
		if (extent > old_end - old_addr)
			extent = old_end - old_addr;
		old_pmd = FUNC4(vma->vm_mm, old_addr);
		if (!old_pmd)
			continue;
		new_pmd = FUNC0(vma->vm_mm, vma, new_addr);
		if (!new_pmd)
			break;
		if (FUNC5(*old_pmd) || FUNC12(*old_pmd)) {
			if (extent == HPAGE_PMD_SIZE) {
				bool moved;
				/* See comment in move_ptes() */
				if (need_rmap_locks)
					FUNC16(vma);
				moved = FUNC9(vma, old_addr, new_addr,
						    old_end, old_pmd, new_pmd);
				if (need_rmap_locks)
					FUNC2(vma);
				if (moved)
					continue;
			}
			FUNC15(vma, old_pmd, old_addr);
			if (FUNC13(old_pmd))
				continue;
		} else if (extent == PMD_SIZE) {
#ifdef CONFIG_HAVE_MOVE_PMD
			/*
			 * If the extent is PMD-sized, try to speed the move by
			 * moving at the PMD level if possible.
			 */
			bool moved;

			if (need_rmap_locks)
				take_rmap_locks(vma);
			moved = move_normal_pmd(vma, old_addr, new_addr,
					old_end, old_pmd, new_pmd);
			if (need_rmap_locks)
				drop_rmap_locks(vma);
			if (moved)
				continue;
#endif
		}

		if (FUNC14(new_vma->vm_mm, new_pmd))
			break;
		next = (new_addr + PMD_SIZE) & PMD_MASK;
		if (extent > next - new_addr)
			extent = next - new_addr;
		FUNC11(vma, old_pmd, old_addr, old_addr + extent, new_vma,
			  new_pmd, new_addr, need_rmap_locks);
	}

	FUNC6(&range);

	return len + old_addr - old_end;	/* how much done */
}