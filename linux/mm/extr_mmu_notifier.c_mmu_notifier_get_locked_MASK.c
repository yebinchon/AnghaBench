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
struct mmu_notifier_ops {int /*<<< orphan*/  (* free_notifier ) (struct mmu_notifier*) ;struct mmu_notifier* (* alloc_notifier ) (struct mm_struct*) ;} ;
struct mmu_notifier {struct mmu_notifier_ops const* ops; } ;
struct mm_struct {scalar_t__ mmu_notifier_mm; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 struct mmu_notifier* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mmu_notifier*) ; 
 int FUNC2 (struct mmu_notifier*,struct mm_struct*) ; 
 struct mmu_notifier* FUNC3 (struct mm_struct*,struct mmu_notifier_ops const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mmu_notifier* FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier*) ; 

struct mmu_notifier *FUNC7(const struct mmu_notifier_ops *ops,
					     struct mm_struct *mm)
{
	struct mmu_notifier *mn;
	int ret;

	FUNC4(&mm->mmap_sem);

	if (mm->mmu_notifier_mm) {
		mn = FUNC3(mm, ops);
		if (mn)
			return mn;
	}

	mn = ops->alloc_notifier(mm);
	if (FUNC1(mn))
		return mn;
	mn->ops = ops;
	ret = FUNC2(mn, mm);
	if (ret)
		goto out_free;
	return mn;
out_free:
	mn->ops->free_notifier(mn);
	return FUNC0(ret);
}