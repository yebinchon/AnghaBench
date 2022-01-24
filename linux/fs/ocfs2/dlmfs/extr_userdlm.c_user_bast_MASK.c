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
struct user_lock_res {int l_blocking; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; } ;
struct ocfs2_dlm_lksb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  USER_LOCK_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct user_lock_res* FUNC4 (struct ocfs2_dlm_lksb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_dlm_lksb *lksb, int level)
{
	struct user_lock_res *lockres = FUNC4(lksb);

	FUNC1(ML_BASTS, "BAST fired for lockres %.*s, blocking %d, level %d\n",
	     lockres->l_namelen, lockres->l_name, level, lockres->l_level);

	FUNC2(&lockres->l_lock);
	lockres->l_flags |= USER_LOCK_BLOCKED;
	if (level > lockres->l_blocking)
		lockres->l_blocking = level;

	FUNC0(lockres);
	FUNC3(&lockres->l_lock);

	FUNC5(&lockres->l_event);
}