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
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int OCFS2_LOCK_NEEDS_REFRESH ; 
 int OCFS2_LOCK_REFRESHING ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_lock_res *lockres)
{
	unsigned long flags;
	int status = 0;

refresh_check:
	FUNC3(&lockres->l_lock, flags);
	if (!(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH)) {
		FUNC4(&lockres->l_lock, flags);
		goto bail;
	}

	if (lockres->l_flags & OCFS2_LOCK_REFRESHING) {
		FUNC4(&lockres->l_lock, flags);

		FUNC2(lockres);
		goto refresh_check;
	}

	/* Ok, I'll be the one to refresh this lock. */
	FUNC0(lockres, OCFS2_LOCK_REFRESHING);
	FUNC4(&lockres->l_lock, flags);

	status = 1;
bail:
	FUNC1(0, "status %d\n", status);
	return status;
}