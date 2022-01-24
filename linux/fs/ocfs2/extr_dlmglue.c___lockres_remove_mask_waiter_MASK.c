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
struct ocfs2_mask_waiter {int mw_mask; int mw_goal; int /*<<< orphan*/  mw_complete; int /*<<< orphan*/  mw_item; } ;
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_lock_res*) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_lock_res *lockres,
				      struct ocfs2_mask_waiter *mw)
{
	int ret = 0;

	FUNC0(&lockres->l_lock);
	if (!FUNC3(&mw->mw_item)) {
		if ((lockres->l_flags & mw->mw_mask) != mw->mw_goal)
			ret = -EBUSY;

		FUNC2(&mw->mw_item);
		FUNC1(&mw->mw_complete);
		FUNC4(lockres);
	}

	return ret;
}