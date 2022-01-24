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
struct mm_struct {int dummy; } ;
struct mm_slot {int /*<<< orphan*/  mm_node; int /*<<< orphan*/  hash; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  khugepaged_mm_lock ; 
 scalar_t__ FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 

__attribute__((used)) static void FUNC6(struct mm_slot *mm_slot)
{
	struct mm_struct *mm = mm_slot->mm;

	FUNC4(&khugepaged_mm_lock);

	if (FUNC2(mm)) {
		/* free mm_slot */
		FUNC1(&mm_slot->hash);
		FUNC3(&mm_slot->mm_node);

		/*
		 * Not strictly needed because the mm exited already.
		 *
		 * clear_bit(MMF_VM_HUGEPAGE, &mm->flags);
		 */

		/* khugepaged_mm_lock actually not necessary for the below */
		FUNC0(mm_slot);
		FUNC5(mm);
	}
}