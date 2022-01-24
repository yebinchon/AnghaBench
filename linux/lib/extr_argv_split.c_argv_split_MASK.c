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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ KMALLOC_MAX_SIZE ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 

char **FUNC5(gfp_t gfp, const char *str, int *argcp)
{
	char *argv_str;
	bool was_space;
	char **argv, **argv_ret;
	int argc;

	argv_str = FUNC4(str, KMALLOC_MAX_SIZE - 1, gfp);
	if (!argv_str)
		return NULL;

	argc = FUNC0(argv_str);
	argv = FUNC3(argc + 2, sizeof(*argv), gfp);
	if (!argv) {
		FUNC2(argv_str);
		return NULL;
	}

	*argv = argv_str;
	argv_ret = ++argv;
	for (was_space = true; *argv_str; argv_str++) {
		if (FUNC1(*argv_str)) {
			was_space = true;
			*argv_str = 0;
		} else if (was_space) {
			was_space = false;
			*argv++ = argv_str;
		}
	}
	*argv = NULL;

	if (argcp)
		*argcp = argc;
	return argv_ret;
}