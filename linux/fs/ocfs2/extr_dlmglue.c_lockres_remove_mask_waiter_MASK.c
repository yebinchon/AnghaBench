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
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_lock_res *lockres,
				      struct ocfs2_mask_waiter *mw)
{
	unsigned long flags;
	int ret = 0;

	FUNC1(&lockres->l_lock, flags);
	ret = FUNC0(lockres, mw);
	FUNC2(&lockres->l_lock, flags);

	return ret;

}