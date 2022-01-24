#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {TYPE_1__* mmu_notifier_mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* LIST_POISON1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct mm_struct *mm)
{
	FUNC0(!FUNC1(&mm->mmu_notifier_mm->list));
	FUNC2(mm->mmu_notifier_mm);
	mm->mmu_notifier_mm = LIST_POISON1; /* debug */
}