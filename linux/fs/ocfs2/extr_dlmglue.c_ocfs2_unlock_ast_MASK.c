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
struct ocfs2_lock_res {int l_unlock_action; int l_flags; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_name; } ;
struct ocfs2_dlm_lksb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_LOCK_IV ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_AST_INVALID ; 
 int OCFS2_LOCK_BLOCKED ; 
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
#define  OCFS2_UNLOCK_CANCEL_CONVERT 129 
#define  OCFS2_UNLOCK_DROP_LOCK 128 
 int OCFS2_UNLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*) ; 
 struct ocfs2_lock_res* FUNC4 (struct ocfs2_dlm_lksb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ocfs2_dlm_lksb *lksb, int error)
{
	struct ocfs2_lock_res *lockres = FUNC4(lksb);
	unsigned long flags;

	FUNC2(ML_BASTS, "UNLOCK AST fired for lockres %s, action = %d\n",
	     lockres->l_name, lockres->l_unlock_action);

	FUNC6(&lockres->l_lock, flags);
	if (error) {
		FUNC2(ML_ERROR, "Dlm passes error %d for lock %s, "
		     "unlock_action %d\n", error, lockres->l_name,
		     lockres->l_unlock_action);
		FUNC7(&lockres->l_lock, flags);
		return;
	}

	switch(lockres->l_unlock_action) {
	case OCFS2_UNLOCK_CANCEL_CONVERT:
		FUNC2(0, "Cancel convert success for %s\n", lockres->l_name);
		lockres->l_action = OCFS2_AST_INVALID;
		/* Downconvert thread may have requeued this lock, we
		 * need to wake it. */
		if (lockres->l_flags & OCFS2_LOCK_BLOCKED)
			FUNC5(FUNC3(lockres));
		break;
	case OCFS2_UNLOCK_DROP_LOCK:
		lockres->l_level = DLM_LOCK_IV;
		break;
	default:
		FUNC0();
	}

	FUNC1(lockres, OCFS2_LOCK_BUSY);
	lockres->l_unlock_action = OCFS2_UNLOCK_INVALID;
	FUNC8(&lockres->l_event);
	FUNC7(&lockres->l_lock, flags);
}