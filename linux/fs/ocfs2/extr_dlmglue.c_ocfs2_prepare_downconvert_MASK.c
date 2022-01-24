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
struct ocfs2_lock_res {scalar_t__ l_blocking; int l_level; int l_requested; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_pending_gen; int /*<<< orphan*/  l_unlock_action; int /*<<< orphan*/  l_ex_holders; int /*<<< orphan*/  l_ro_holders; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_mask_waiters; int /*<<< orphan*/  l_blocked_list; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DLM_LOCK_NL ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_AST_DOWNCONVERT ; 
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,scalar_t__,...) ; 

__attribute__((used)) static unsigned int FUNC7(struct ocfs2_lock_res *lockres,
					      int new_level)
{
	FUNC2(&lockres->l_lock);

	FUNC1(lockres->l_blocking <= DLM_LOCK_NL);

	if (lockres->l_level <= new_level) {
		FUNC6(ML_ERROR, "lockres %s, lvl %d <= %d, blcklst %d, mask %d, "
		     "type %d, flags 0x%lx, hold %d %d, act %d %d, req %d, "
		     "block %d, pgen %d\n", lockres->l_name, lockres->l_level,
		     new_level, FUNC3(&lockres->l_blocked_list),
		     FUNC3(&lockres->l_mask_waiters), lockres->l_type,
		     lockres->l_flags, lockres->l_ro_holders,
		     lockres->l_ex_holders, lockres->l_action,
		     lockres->l_unlock_action, lockres->l_requested,
		     lockres->l_blocking, lockres->l_pending_gen);
		FUNC0();
	}

	FUNC6(ML_BASTS, "lockres %s, level %d => %d, blocking %d\n",
	     lockres->l_name, lockres->l_level, new_level, lockres->l_blocking);

	lockres->l_action = OCFS2_AST_DOWNCONVERT;
	lockres->l_requested = new_level;
	FUNC4(lockres, OCFS2_LOCK_BUSY);
	return FUNC5(lockres);
}