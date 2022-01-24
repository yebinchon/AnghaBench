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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int) ; 

char **FUNC6(const char *str, int *argcp)
{
	int argc = FUNC2(str);
	char **argv = FUNC1(argc + 1, sizeof(*argv));
	char **argvp;

	if (argv == NULL)
		goto out;

	if (argcp)
		*argcp = argc;

	argvp = argv;

	while (*str) {
		str = FUNC4(str);

		if (*str) {
			const char *p = str;
			char *t;

			str = FUNC3(str);

			t = FUNC5(p, str-p);
			if (t == NULL)
				goto fail;
			*argvp++ = t;
		}
	}
	*argvp = NULL;

out:
	return argv;

fail:
	FUNC0(argv);
	return NULL;
}