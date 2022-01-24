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
struct kernel_param {scalar_t__ arg; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

int FUNC6(const char *val, const struct kernel_param *kp)
{
	if (FUNC5(val) > 1024) {
		FUNC2("%s: string parameter too long\n", kp->name);
		return -ENOSPC;
	}

	FUNC1(*(char **)kp->arg);

	/* This is a hack.  We can't kmalloc in early boot, and we
	 * don't need to; this mangled commandline is preserved. */
	if (FUNC3()) {
		*(char **)kp->arg = FUNC0(FUNC5(val)+1);
		if (!*(char **)kp->arg)
			return -ENOMEM;
		FUNC4(*(char **)kp->arg, val);
	} else
		*(const char **)kp->arg = val;

	return 0;
}