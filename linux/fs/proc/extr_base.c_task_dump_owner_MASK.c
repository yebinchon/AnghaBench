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
typedef  int umode_t ;
struct user_namespace {int dummy; } ;
struct task_struct {int flags; struct mm_struct* mm; } ;
struct mm_struct {struct user_namespace* user_ns; } ;
struct cred {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int PF_KTHREAD ; 
 scalar_t__ SUID_DUMP_USER ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct task_struct *task, umode_t mode,
		     kuid_t *ruid, kgid_t *rgid)
{
	/* Depending on the state of dumpable compute who should own a
	 * proc file for a task.
	 */
	const struct cred *cred;
	kuid_t uid;
	kgid_t gid;

	if (FUNC10(task->flags & PF_KTHREAD)) {
		*ruid = GLOBAL_ROOT_UID;
		*rgid = GLOBAL_ROOT_GID;
		return;
	}

	/* Default to the tasks effective ownership */
	FUNC5();
	cred = FUNC0(task);
	uid = cred->euid;
	gid = cred->egid;
	FUNC6();

	/*
	 * Before the /proc/pid/status file was created the only way to read
	 * the effective uid of a /process was to stat /proc/pid.  Reading
	 * /proc/pid/status is slow enough that procps and other packages
	 * kept stating /proc/pid.  To keep the rules in /proc simple I have
	 * made this apply to all per process world readable and executable
	 * directories.
	 */
	if (mode != (S_IFDIR|S_IRUGO|S_IXUGO)) {
		struct mm_struct *mm;
		FUNC7(task);
		mm = task->mm;
		/* Make non-dumpable tasks owned by some root */
		if (mm) {
			if (FUNC1(mm) != SUID_DUMP_USER) {
				struct user_namespace *user_ns = mm->user_ns;

				uid = FUNC4(user_ns, 0);
				if (!FUNC9(uid))
					uid = GLOBAL_ROOT_UID;

				gid = FUNC3(user_ns, 0);
				if (!FUNC2(gid))
					gid = GLOBAL_ROOT_GID;
			}
		} else {
			uid = GLOBAL_ROOT_UID;
			gid = GLOBAL_ROOT_GID;
		}
		FUNC8(task);
	}
	*ruid = uid;
	*rgid = gid;
}