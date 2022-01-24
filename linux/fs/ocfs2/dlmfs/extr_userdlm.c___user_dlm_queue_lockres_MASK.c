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
struct user_lock_res {int l_flags; int /*<<< orphan*/  l_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int USER_LOCK_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct user_lock_res*) ; 
 int /*<<< orphan*/  user_dlm_unblock_lock ; 
 int /*<<< orphan*/  user_dlm_worker ; 

__attribute__((used)) static void FUNC3(struct user_lock_res *lockres)
{
	if (!(lockres->l_flags & USER_LOCK_QUEUED)) {
		FUNC2(lockres);

		FUNC0(&lockres->l_work, user_dlm_unblock_lock);

		FUNC1(user_dlm_worker, &lockres->l_work);
		lockres->l_flags |= USER_LOCK_QUEUED;
	}
}