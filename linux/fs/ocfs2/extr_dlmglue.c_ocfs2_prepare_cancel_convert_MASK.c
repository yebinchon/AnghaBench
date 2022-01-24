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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_unlock_action; scalar_t__ l_action; int l_flags; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_BASTS ; 
 scalar_t__ OCFS2_AST_CONVERT ; 
 scalar_t__ OCFS2_AST_DOWNCONVERT ; 
 int OCFS2_LOCK_BUSY ; 
 scalar_t__ OCFS2_UNLOCK_CANCEL_CONVERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
				        struct ocfs2_lock_res *lockres)
{
	FUNC1(&lockres->l_lock);

	if (lockres->l_unlock_action == OCFS2_UNLOCK_CANCEL_CONVERT) {
		/* If we're already trying to cancel a lock conversion
		 * then just drop the spinlock and allow the caller to
		 * requeue this lock. */
		FUNC2(ML_BASTS, "lockres %s, skip convert\n", lockres->l_name);
		return 0;
	}

	/* were we in a convert when we got the bast fire? */
	FUNC0(lockres->l_action != OCFS2_AST_CONVERT &&
	       lockres->l_action != OCFS2_AST_DOWNCONVERT);
	/* set things up for the unlockast to know to just
	 * clear out the ast_action and unset busy, etc. */
	lockres->l_unlock_action = OCFS2_UNLOCK_CANCEL_CONVERT;

	FUNC3(!(lockres->l_flags & OCFS2_LOCK_BUSY),
			"lock %s, invalid flags: 0x%lx\n",
			lockres->l_name, lockres->l_flags);

	FUNC2(ML_BASTS, "lockres %s\n", lockres->l_name);

	return 1;
}