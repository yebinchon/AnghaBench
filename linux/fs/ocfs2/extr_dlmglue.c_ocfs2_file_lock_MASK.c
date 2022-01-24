#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  cconn; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_level; int l_requested; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_action; } ;
struct ocfs2_file_private {struct ocfs2_lock_res fp_flock; } ;
struct file {TYPE_2__* f_mapping; struct ocfs2_file_private* private_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int DLM_LKF_CONVERT ; 
 unsigned int DLM_LKF_NOQUEUE ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_NL ; 
 int DLM_LOCK_PR ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_AST_CONVERT ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BUSY ; 
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_mask_waiter*) ; 
 int FUNC10 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_lock_res*,int) ; 
 int FUNC13 (struct ocfs2_mask_waiter*) ; 
 int FUNC14 (struct ocfs2_mask_waiter*,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC17(struct file *file, int ex, int trylock)
{
	int ret, level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	unsigned int lkm_flags = trylock ? DLM_LKF_NOQUEUE : 0;
	unsigned long flags;
	struct ocfs2_file_private *fp = file->private_data;
	struct ocfs2_lock_res *lockres = &fp->fp_flock;
	struct ocfs2_super *osb = FUNC1(file->f_mapping->host->i_sb);
	struct ocfs2_mask_waiter mw;

	FUNC9(&mw);

	if ((lockres->l_flags & OCFS2_LOCK_BUSY) ||
	    (lockres->l_level > DLM_LOCK_NL)) {
		FUNC5(ML_ERROR,
		     "File lock \"%s\" has busy or locked state: flags: 0x%lx, "
		     "level: %u\n", lockres->l_name, lockres->l_flags,
		     lockres->l_level);
		return -EINVAL;
	}

	FUNC15(&lockres->l_lock, flags);
	if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED)) {
		FUNC2(lockres, &mw, OCFS2_LOCK_BUSY, 0);
		FUNC16(&lockres->l_lock, flags);

		/*
		 * Get the lock at NLMODE to start - that way we
		 * can cancel the upconvert request if need be.
		 */
		ret = FUNC10(osb, lockres, DLM_LOCK_NL, 0);
		if (ret < 0) {
			FUNC6(ret);
			goto out;
		}

		ret = FUNC13(&mw);
		if (ret) {
			FUNC6(ret);
			goto out;
		}
		FUNC15(&lockres->l_lock, flags);
	}

	lockres->l_action = OCFS2_AST_CONVERT;
	lkm_flags |= DLM_LKF_CONVERT;
	lockres->l_requested = level;
	FUNC3(lockres, OCFS2_LOCK_BUSY);

	FUNC2(lockres, &mw, OCFS2_LOCK_BUSY, 0);
	FUNC16(&lockres->l_lock, flags);

	ret = FUNC7(osb->cconn, level, &lockres->l_lksb, lkm_flags,
			     lockres->l_name, OCFS2_LOCK_ID_MAX_LEN - 1);
	if (ret) {
		if (!trylock || (ret != -EAGAIN)) {
			FUNC11("ocfs2_dlm_lock", ret, lockres);
			ret = -EINVAL;
		}

		FUNC12(lockres, 1);
		FUNC4(lockres, &mw);
		goto out;
	}

	ret = FUNC14(&mw, lockres);
	if (ret == -ERESTARTSYS) {
		/*
		 * Userspace can cause deadlock itself with
		 * flock(). Current behavior locally is to allow the
		 * deadlock, but abort the system call if a signal is
		 * received. We follow this example, otherwise a
		 * poorly written program could sit in kernel until
		 * reboot.
		 *
		 * Handling this is a bit more complicated for Ocfs2
		 * though. We can't exit this function with an
		 * outstanding lock request, so a cancel convert is
		 * required. We intentionally overwrite 'ret' - if the
		 * cancel fails and the lock was granted, it's easier
		 * to just bubble success back up to the user.
		 */
		ret = FUNC8(lockres, level);
	} else if (!ret && (level > lockres->l_level)) {
		/* Trylock failed asynchronously */
		FUNC0(!trylock);
		ret = -EAGAIN;
	}

out:

	FUNC5(0, "Lock: \"%s\" ex: %d, trylock: %d, returns: %d\n",
	     lockres->l_name, ex, trylock, ret);
	return ret;
}