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
struct mmu_notifier_mm {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct mmu_notifier {int users; int /*<<< orphan*/  hlist; struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  mm_users; struct mmu_notifier_mm* mmu_notifier_mm; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_LOCKDEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __mmu_notifier_invalidate_range_start_map ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_mm*) ; 
 struct mmu_notifier_mm* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*) ; 
 int FUNC13 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct mmu_notifier *mn, struct mm_struct *mm)
{
	struct mmu_notifier_mm *mmu_notifier_mm = NULL;
	int ret;

	FUNC11(&mm->mmap_sem);
	FUNC0(FUNC3(&mm->mm_users) <= 0);

	if (FUNC2(CONFIG_LOCKDEP)) {
		FUNC4(GFP_KERNEL);
		FUNC9(&__mmu_notifier_invalidate_range_start_map);
		FUNC10(&__mmu_notifier_invalidate_range_start_map);
		FUNC5(GFP_KERNEL);
	}

	mn->mm = mm;
	mn->users = 1;

	if (!mm->mmu_notifier_mm) {
		/*
		 * kmalloc cannot be called under mm_take_all_locks(), but we
		 * know that mm->mmu_notifier_mm can't change while we hold
		 * the write side of the mmap_sem.
		 */
		mmu_notifier_mm =
			FUNC8(sizeof(struct mmu_notifier_mm), GFP_KERNEL);
		if (!mmu_notifier_mm)
			return -ENOMEM;

		FUNC1(&mmu_notifier_mm->list);
		FUNC16(&mmu_notifier_mm->lock);
	}

	ret = FUNC13(mm);
	if (FUNC18(ret))
		goto out_clean;

	/* Pairs with the mmdrop in mmu_notifier_unregister_* */
	FUNC14(mm);

	/*
	 * Serialize the update against mmu_notifier_unregister. A
	 * side note: mmu_notifier_release can't run concurrently with
	 * us because we hold the mm_users pin (either implicitly as
	 * current->mm or explicitly with get_task_mm() or similar).
	 * We can't race against any other mmu notifier method either
	 * thanks to mm_take_all_locks().
	 */
	if (mmu_notifier_mm)
		mm->mmu_notifier_mm = mmu_notifier_mm;

	FUNC15(&mm->mmu_notifier_mm->lock);
	FUNC6(&mn->hlist, &mm->mmu_notifier_mm->list);
	FUNC17(&mm->mmu_notifier_mm->lock);

	FUNC12(mm);
	FUNC0(FUNC3(&mm->mm_users) <= 0);
	return 0;

out_clean:
	FUNC7(mmu_notifier_mm);
	return ret;
}