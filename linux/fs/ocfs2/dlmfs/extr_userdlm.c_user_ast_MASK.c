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
struct user_lock_res {scalar_t__ l_level; scalar_t__ l_requested; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_blocking; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_dlm_lksb {int dummy; } ;

/* Variables and functions */
 scalar_t__ DLM_LOCK_IV ; 
 int /*<<< orphan*/  DLM_LOCK_NL ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  USER_LOCK_ATTACHED ; 
 int /*<<< orphan*/  USER_LOCK_BLOCKED ; 
 int /*<<< orphan*/  USER_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct user_lock_res* FUNC6 (struct ocfs2_dlm_lksb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ocfs2_dlm_lksb *lksb)
{
	struct user_lock_res *lockres = FUNC6(lksb);
	int status;

	FUNC0(ML_BASTS, "AST fired for lockres %.*s, level %d => %d\n",
	     lockres->l_namelen, lockres->l_name, lockres->l_level,
	     lockres->l_requested);

	FUNC3(&lockres->l_lock);

	status = FUNC2(&lockres->l_lksb);
	if (status) {
		FUNC0(ML_ERROR, "lksb status value of %u on lockres %.*s\n",
		     status, lockres->l_namelen, lockres->l_name);
		FUNC4(&lockres->l_lock);
		return;
	}

	FUNC1(lockres->l_requested == DLM_LOCK_IV,
			"Lockres %.*s, requested ivmode. flags 0x%x\n",
			lockres->l_namelen, lockres->l_name, lockres->l_flags);

	/* we're downconverting. */
	if (lockres->l_requested < lockres->l_level) {
		if (lockres->l_requested <=
		    FUNC5(lockres->l_blocking)) {
			lockres->l_blocking = DLM_LOCK_NL;
			lockres->l_flags &= ~USER_LOCK_BLOCKED;
		}
	}

	lockres->l_level = lockres->l_requested;
	lockres->l_requested = DLM_LOCK_IV;
	lockres->l_flags |= USER_LOCK_ATTACHED;
	lockres->l_flags &= ~USER_LOCK_BUSY;

	FUNC4(&lockres->l_lock);

	FUNC7(&lockres->l_event);
}