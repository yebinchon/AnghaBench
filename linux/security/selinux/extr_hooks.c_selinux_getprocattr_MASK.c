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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {int /*<<< orphan*/  sockcreate_sid; int /*<<< orphan*/  keycreate_sid; int /*<<< orphan*/  create_sid; int /*<<< orphan*/  exec_sid; int /*<<< orphan*/  osid; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PROCESS__GETATTR ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,unsigned int*) ; 
 struct task_security_struct* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(struct task_struct *p,
			       char *name, char **value)
{
	const struct task_security_struct *__tsec;
	u32 sid;
	int error;
	unsigned len;

	FUNC3();
	__tsec = FUNC6(FUNC0(p));

	if (current != p) {
		error = FUNC1(&selinux_state,
				     FUNC2(), __tsec->sid,
				     SECCLASS_PROCESS, PROCESS__GETATTR, NULL);
		if (error)
			goto bad;
	}

	if (!FUNC7(name, "current"))
		sid = __tsec->sid;
	else if (!FUNC7(name, "prev"))
		sid = __tsec->osid;
	else if (!FUNC7(name, "exec"))
		sid = __tsec->exec_sid;
	else if (!FUNC7(name, "fscreate"))
		sid = __tsec->create_sid;
	else if (!FUNC7(name, "keycreate"))
		sid = __tsec->keycreate_sid;
	else if (!FUNC7(name, "sockcreate"))
		sid = __tsec->sockcreate_sid;
	else {
		error = -EINVAL;
		goto bad;
	}
	FUNC4();

	if (!sid)
		return 0;

	error = FUNC5(&selinux_state, sid, value, &len);
	if (error)
		return error;
	return len;

bad:
	FUNC4();
	return error;
}