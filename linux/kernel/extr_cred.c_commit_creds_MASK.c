#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {struct cred const* cred; struct cred const* real_cred; scalar_t__ pdeath_signal; scalar_t__ mm; } ;
typedef  struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  fsuid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; TYPE_1__* user; int /*<<< orphan*/  usage; } const cred ;
struct TYPE_2__ {int /*<<< orphan*/  processes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROC_EVENT_GID ; 
 int /*<<< orphan*/  PROC_EVENT_UID ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*,struct cred const*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct cred const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC10 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC13 (struct cred const*,struct cred const*) ; 
 int FUNC14 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  suid_dumpable ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cred const*) ; 

int FUNC19(struct cred *new)
{
	struct task_struct *task = current;
	const struct cred *old = task->real_cred;

	FUNC8("commit_creds(%p{%d,%d})", new,
	       FUNC4(&new->usage),
	       FUNC14(new));

	FUNC0(task->cred != old);
#ifdef CONFIG_DEBUG_CREDENTIALS
	BUG_ON(read_cred_subscribers(old) < 2);
	validate_creds(old);
	validate_creds(new);
#endif
	FUNC0(FUNC4(&new->usage) < 1);

	FUNC6(new); /* we will require a ref for the subj creds too */

	/* dumpability changes */
	if (!FUNC17(old->euid, new->euid) ||
	    !FUNC7(old->egid, new->egid) ||
	    !FUNC17(old->fsuid, new->fsuid) ||
	    !FUNC7(old->fsgid, new->fsgid) ||
	    !FUNC5(old, new)) {
		if (task->mm)
			FUNC15(task->mm, suid_dumpable);
		task->pdeath_signal = 0;
		/*
		 * If a task drops privileges and becomes nondumpable,
		 * the dumpability change must become visible before
		 * the credential change; otherwise, a __ptrace_may_access()
		 * racing with this change may be able to attach to a task it
		 * shouldn't be able to attach to (as if the task had dropped
		 * privileges without becoming nondumpable).
		 * Pairs with a read barrier in __ptrace_may_access().
		 */
		FUNC16();
	}

	/* alter the thread keyring */
	if (!FUNC17(new->fsuid, old->fsuid))
		FUNC10(new);
	if (!FUNC7(new->fsgid, old->fsgid))
		FUNC9(new);

	/* do it
	 * RLIMIT_NPROC limits on user->processes have already been checked
	 * in set_user().
	 */
	FUNC1(new, 2);
	if (new->user != old->user)
		FUNC3(&new->user->processes);
	FUNC13(task->real_cred, new);
	FUNC13(task->cred, new);
	if (new->user != old->user)
		FUNC2(&old->user->processes);
	FUNC1(old, -2);

	/* send notifications */
	if (!FUNC17(new->uid,   old->uid)  ||
	    !FUNC17(new->euid,  old->euid) ||
	    !FUNC17(new->suid,  old->suid) ||
	    !FUNC17(new->fsuid, old->fsuid))
		FUNC11(task, PROC_EVENT_UID);

	if (!FUNC7(new->gid,   old->gid)  ||
	    !FUNC7(new->egid,  old->egid) ||
	    !FUNC7(new->sgid,  old->sgid) ||
	    !FUNC7(new->fsgid, old->fsgid))
		FUNC11(task, PROC_EVENT_GID);

	/* release the old obj and subj refs both */
	FUNC12(old);
	FUNC12(old);
	return 0;
}