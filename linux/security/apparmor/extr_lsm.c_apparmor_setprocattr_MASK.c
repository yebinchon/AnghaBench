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
struct TYPE_2__ {char const* info; int error; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int AA_CHANGE_NOFLAGS ; 
 int AA_CHANGE_ONEXEC ; 
 int AA_CHANGE_STACK ; 
 int AA_CHANGE_TEST ; 
 int /*<<< orphan*/  AUDIT_APPARMOR_DENIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_NONE ; 
 int /*<<< orphan*/  OP_SETPROCATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,size_t,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*,size_t) ; 
 int /*<<< orphan*/  sa ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char**,char*) ; 

__attribute__((used)) static int FUNC14(const char *name, void *value,
				size_t size)
{
	char *command, *largs = NULL, *args = value;
	size_t arg_size;
	int error;
	FUNC0(sa, LSM_AUDIT_DATA_NONE, OP_SETPROCATTR);

	if (size == 0)
		return -EINVAL;

	/* AppArmor requires that the buffer must be null terminated atm */
	if (args[size - 1] != '\0') {
		/* null terminate */
		largs = args = FUNC8(size + 1, GFP_KERNEL);
		if (!args)
			return -ENOMEM;
		FUNC9(args, value, size);
		args[size] = '\0';
	}

	error = -EINVAL;
	args = FUNC12(args);
	command = FUNC13(&args, " ");
	if (!args)
		goto out;
	args = FUNC10(args);
	if (!*args)
		goto out;

	arg_size = size - (args - (largs ? largs : (char *) value));
	if (FUNC11(name, "current") == 0) {
		if (FUNC11(command, "changehat") == 0) {
			error = FUNC3(args, arg_size,
							 AA_CHANGE_NOFLAGS);
		} else if (FUNC11(command, "permhat") == 0) {
			error = FUNC3(args, arg_size,
							 AA_CHANGE_TEST);
		} else if (FUNC11(command, "changeprofile") == 0) {
			error = FUNC2(args, AA_CHANGE_NOFLAGS);
		} else if (FUNC11(command, "permprofile") == 0) {
			error = FUNC2(args, AA_CHANGE_TEST);
		} else if (FUNC11(command, "stack") == 0) {
			error = FUNC2(args, AA_CHANGE_STACK);
		} else
			goto fail;
	} else if (FUNC11(name, "exec") == 0) {
		if (FUNC11(command, "exec") == 0)
			error = FUNC2(args, AA_CHANGE_ONEXEC);
		else if (FUNC11(command, "stack") == 0)
			error = FUNC2(args, (AA_CHANGE_ONEXEC |
							 AA_CHANGE_STACK));
		else
			goto fail;
	} else
		/* only support the "current" and "exec" process attributes */
		goto fail;

	if (!error)
		error = size;
out:
	FUNC7(largs);
	return error;

fail:
	FUNC4(&sa)->label = FUNC5();
	FUNC4(&sa)->info = name;
	FUNC4(&sa)->error = error = -EINVAL;
	FUNC1(AUDIT_APPARMOR_DENIED, &sa, NULL);
	FUNC6(FUNC4(&sa)->label);
	goto out;
}