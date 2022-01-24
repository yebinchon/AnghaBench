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
typedef  scalar_t__ u32 ;
struct task_security_struct {scalar_t__ sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; scalar_t__ exec_sid; } ;
struct cred {int dummy; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY__CREATE ; 
 int /*<<< orphan*/  PROCESS__DYNTRANSITION ; 
 int /*<<< orphan*/  PROCESS__PTRACE ; 
 int /*<<< orphan*/  PROCESS__SETCURRENT ; 
 int /*<<< orphan*/  PROCESS__SETEXEC ; 
 int /*<<< orphan*/  PROCESS__SETFSCREATE ; 
 int /*<<< orphan*/  PROCESS__SETKEYCREATE ; 
 int /*<<< orphan*/  PROCESS__SETSOCKCREATE ; 
 int /*<<< orphan*/  SECCLASS_KEY ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,void*,size_t) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cred*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct cred* FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,void*,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,void*,size_t,scalar_t__*) ; 
 struct task_security_struct* FUNC16 (struct cred*) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 

__attribute__((used)) static int FUNC18(const char *name, void *value, size_t size)
{
	struct task_security_struct *tsec;
	struct cred *new;
	u32 mysid = FUNC9(), sid = 0, ptsid;
	int error;
	char *str = value;

	/*
	 * Basic control over ability to set these attributes at all.
	 */
	if (!FUNC17(name, "exec"))
		error = FUNC6(&selinux_state,
				     mysid, mysid, SECCLASS_PROCESS,
				     PROCESS__SETEXEC, NULL);
	else if (!FUNC17(name, "fscreate"))
		error = FUNC6(&selinux_state,
				     mysid, mysid, SECCLASS_PROCESS,
				     PROCESS__SETFSCREATE, NULL);
	else if (!FUNC17(name, "keycreate"))
		error = FUNC6(&selinux_state,
				     mysid, mysid, SECCLASS_PROCESS,
				     PROCESS__SETKEYCREATE, NULL);
	else if (!FUNC17(name, "sockcreate"))
		error = FUNC6(&selinux_state,
				     mysid, mysid, SECCLASS_PROCESS,
				     PROCESS__SETSOCKCREATE, NULL);
	else if (!FUNC17(name, "current"))
		error = FUNC6(&selinux_state,
				     mysid, mysid, SECCLASS_PROCESS,
				     PROCESS__SETCURRENT, NULL);
	else
		error = -EINVAL;
	if (error)
		return error;

	/* Obtain a SID for the context, if one was specified. */
	if (size && str[0] && str[0] != '\n') {
		if (str[size-1] == '\n') {
			str[size-1] = 0;
			size--;
		}
		error = FUNC14(&selinux_state, value, size,
						&sid, GFP_KERNEL);
		if (error == -EINVAL && !FUNC17(name, "fscreate")) {
			if (!FUNC10(true)) {
				struct audit_buffer *ab;
				size_t audit_size;

				/* We strip a nul only if it is at the end, otherwise the
				 * context contains a nul and we should audit that */
				if (str[size - 1] == '\0')
					audit_size = size - 1;
				else
					audit_size = size;
				ab = FUNC5(FUNC1(),
						     GFP_ATOMIC,
						     AUDIT_SELINUX_ERR);
				FUNC3(ab, "op=fscreate invalid_context=");
				FUNC4(ab, value, audit_size);
				FUNC2(ab);

				return error;
			}
			error = FUNC15(
						      &selinux_state,
						      value, size, &sid);
		}
		if (error)
			return error;
	}

	new = FUNC11();
	if (!new)
		return -ENOMEM;

	/* Permission checking based on the specified context is
	   performed during the actual operation (execve,
	   open/mkdir/...), when we know the full context of the
	   operation.  See selinux_bprm_set_creds for the execve
	   checks and may_create for the file creation checks. The
	   operation will then fail if the context is not permitted. */
	tsec = FUNC16(new);
	if (!FUNC17(name, "exec")) {
		tsec->exec_sid = sid;
	} else if (!FUNC17(name, "fscreate")) {
		tsec->create_sid = sid;
	} else if (!FUNC17(name, "keycreate")) {
		if (sid) {
			error = FUNC6(&selinux_state, mysid, sid,
					     SECCLASS_KEY, KEY__CREATE, NULL);
			if (error)
				goto abort_change;
		}
		tsec->keycreate_sid = sid;
	} else if (!FUNC17(name, "sockcreate")) {
		tsec->sockcreate_sid = sid;
	} else if (!FUNC17(name, "current")) {
		error = -EINVAL;
		if (sid == 0)
			goto abort_change;

		/* Only allow single threaded processes to change context */
		error = -EPERM;
		if (!FUNC8()) {
			error = FUNC13(&selinux_state,
							    tsec->sid, sid);
			if (error)
				goto abort_change;
		}

		/* Check permissions for the transition. */
		error = FUNC6(&selinux_state,
				     tsec->sid, sid, SECCLASS_PROCESS,
				     PROCESS__DYNTRANSITION, NULL);
		if (error)
			goto abort_change;

		/* Check for ptracing, and update the task SID if ok.
		   Otherwise, leave SID unchanged and fail. */
		ptsid = FUNC12();
		if (ptsid != 0) {
			error = FUNC6(&selinux_state,
					     ptsid, sid, SECCLASS_PROCESS,
					     PROCESS__PTRACE, NULL);
			if (error)
				goto abort_change;
		}

		tsec->sid = sid;
	} else {
		error = -EINVAL;
		goto abort_change;
	}

	FUNC7(new);
	return size;

abort_change:
	FUNC0(new);
	return error;
}