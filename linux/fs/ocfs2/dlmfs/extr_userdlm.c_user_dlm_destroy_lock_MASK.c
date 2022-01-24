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
struct user_lock_res {int l_flags; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_lock; scalar_t__ l_ex_holders; scalar_t__ l_ro_holders; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; } ;
struct ocfs2_cluster_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_VALBLK ; 
 int EBUSY ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int USER_LOCK_ATTACHED ; 
 int USER_LOCK_BUSY ; 
 int USER_LOCK_IN_TEARDOWN ; 
 struct ocfs2_cluster_connection* FUNC0 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_cluster_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct user_lock_res*) ; 

int FUNC7(struct user_lock_res *lockres)
{
	int status = -EBUSY;
	struct ocfs2_cluster_connection *conn =
		FUNC0(lockres);

	FUNC1(ML_BASTS, "lockres %.*s\n", lockres->l_namelen, lockres->l_name);

	FUNC3(&lockres->l_lock);
	if (lockres->l_flags & USER_LOCK_IN_TEARDOWN) {
		FUNC4(&lockres->l_lock);
		return 0;
	}

	lockres->l_flags |= USER_LOCK_IN_TEARDOWN;

	while (lockres->l_flags & USER_LOCK_BUSY) {
		FUNC4(&lockres->l_lock);

		FUNC6(lockres);

		FUNC3(&lockres->l_lock);
	}

	if (lockres->l_ro_holders || lockres->l_ex_holders) {
		FUNC4(&lockres->l_lock);
		goto bail;
	}

	status = 0;
	if (!(lockres->l_flags & USER_LOCK_ATTACHED)) {
		FUNC4(&lockres->l_lock);
		goto bail;
	}

	lockres->l_flags &= ~USER_LOCK_ATTACHED;
	lockres->l_flags |= USER_LOCK_BUSY;
	FUNC4(&lockres->l_lock);

	status = FUNC2(conn, &lockres->l_lksb, DLM_LKF_VALBLK);
	if (status) {
		FUNC5("ocfs2_dlm_unlock", status, lockres);
		goto bail;
	}

	FUNC6(lockres);

	status = 0;
bail:
	return status;
}