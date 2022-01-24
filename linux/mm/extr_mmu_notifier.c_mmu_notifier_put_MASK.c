#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmu_notifier {int /*<<< orphan*/  rcu; int /*<<< orphan*/  hlist; scalar_t__ users; struct mm_struct* mm; } ;
struct mm_struct {TYPE_1__* mmu_notifier_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmu_notifier_free_rcu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srcu ; 

void FUNC5(struct mmu_notifier *mn)
{
	struct mm_struct *mm = mn->mm;

	FUNC3(&mm->mmu_notifier_mm->lock);
	if (FUNC0(!mn->users) || --mn->users)
		goto out_unlock;
	FUNC2(&mn->hlist);
	FUNC4(&mm->mmu_notifier_mm->lock);

	FUNC1(&srcu, &mn->rcu, mmu_notifier_free_rcu);
	return;

out_unlock:
	FUNC4(&mm->mmu_notifier_mm->lock);
}