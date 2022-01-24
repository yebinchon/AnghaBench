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
struct user_lock_res {int l_flags; int l_level; int l_requested; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_namelen; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_cluster_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LKF_CONVERT ; 
 int DLM_LKF_NOQUEUE ; 
 int DLM_LKF_VALBLK ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_IV ; 
 int DLM_LOCK_NL ; 
 int DLM_LOCK_PR ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int USER_LOCK_BLOCKED ; 
 int USER_LOCK_BUSY ; 
 struct ocfs2_cluster_connection* FUNC1 (struct user_lock_res*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct ocfs2_cluster_connection*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct user_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC9 (struct user_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC11 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC12 (struct user_lock_res*) ; 

int FUNC13(struct user_lock_res *lockres,
			  int level,
			  int lkm_flags)
{
	int status, local_flags;
	struct ocfs2_cluster_connection *conn =
		FUNC1(lockres);

	if (level != DLM_LOCK_EX &&
	    level != DLM_LOCK_PR) {
		FUNC2(ML_ERROR, "lockres %.*s: invalid request!\n",
		     lockres->l_namelen, lockres->l_name);
		status = -EINVAL;
		goto bail;
	}

	FUNC2(ML_BASTS, "lockres %.*s, level %d, flags = 0x%x\n",
	     lockres->l_namelen, lockres->l_name, level, lkm_flags);

again:
	if (FUNC4(current)) {
		status = -ERESTARTSYS;
		goto bail;
	}

	FUNC5(&lockres->l_lock);

	/* We only compare against the currently granted level
	 * here. If the lock is blocked waiting on a downconvert,
	 * we'll get caught below. */
	if ((lockres->l_flags & USER_LOCK_BUSY) &&
	    (level > lockres->l_level)) {
		/* is someone sitting in dlm_lock? If so, wait on
		 * them. */
		FUNC6(&lockres->l_lock);

		FUNC12(lockres);
		goto again;
	}

	if ((lockres->l_flags & USER_LOCK_BLOCKED) &&
	    (!FUNC9(lockres, level))) {
		/* is the lock is currently blocked on behalf of
		 * another node */
		FUNC6(&lockres->l_lock);

		FUNC11(lockres);
		goto again;
	}

	if (level > lockres->l_level) {
		local_flags = lkm_flags | DLM_LKF_VALBLK;
		if (lockres->l_level != DLM_LOCK_IV)
			local_flags |= DLM_LKF_CONVERT;

		lockres->l_requested = level;
		lockres->l_flags |= USER_LOCK_BUSY;
		FUNC6(&lockres->l_lock);

		FUNC0(level == DLM_LOCK_IV);
		FUNC0(level == DLM_LOCK_NL);

		/* call dlm_lock to upgrade lock now */
		status = FUNC3(conn, level, &lockres->l_lksb,
					local_flags, lockres->l_name,
					lockres->l_namelen);
		if (status) {
			if ((lkm_flags & DLM_LKF_NOQUEUE) &&
			    (status != -EAGAIN))
				FUNC8("ocfs2_dlm_lock",
						   status, lockres);
			FUNC10(lockres);
			goto bail;
		}

		FUNC12(lockres);
		goto again;
	}

	FUNC7(lockres, level);
	FUNC6(&lockres->l_lock);

	status = 0;
bail:
	return status;
}