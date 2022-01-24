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
 int FUNCTION_MAX_ARGS ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned long FUNC5 (char*,char**,int) ; 
 char* FUNC6 (char*,int,char**) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char const*,size_t) ; 

__attribute__((used)) static char *FUNC9(const char *str, size_t len, int argc, char *argv[])
{
	char *tmp, *name, *res, *endptr, *prev, *p;
	int new_argc = 0;
	char *new_argv[FUNCTION_MAX_ARGS];
	int nest = 0;
	int i;
	unsigned long n;

	tmp = FUNC8(str, len);

	/*
	 * If variable name is '1', '2', etc.  It is generally an argument
	 * from a user-function call (i.e. local-scope variable).  If not
	 * available, then look-up global-scope variables.
	 */
	n = FUNC5(tmp, &endptr, 10);
	if (!*endptr && n > 0 && n <= argc) {
		res = FUNC7(argv[n - 1]);
		goto free_tmp;
	}

	prev = p = tmp;

	/*
	 * Split into tokens
	 * The function name and arguments are separated by a comma.
	 * For example, if the function call is like this:
	 *   $(foo,$(x),$(y))
	 *
	 * The input string for this helper should be:
	 *   foo,$(x),$(y)
	 *
	 * and split into:
	 *   new_argv[0] = 'foo'
	 *   new_argv[1] = '$(x)'
	 *   new_argv[2] = '$(y)'
	 */
	while (*p) {
		if (nest == 0 && *p == ',') {
			*p = 0;
			if (new_argc >= FUNCTION_MAX_ARGS)
				FUNC4("too many function arguments");
			new_argv[new_argc++] = prev;
			prev = p + 1;
		} else if (*p == '(') {
			nest++;
		} else if (*p == ')') {
			nest--;
		}

		p++;
	}
	new_argv[new_argc++] = prev;

	/*
	 * Shift arguments
	 * new_argv[0] represents a function name or a variable name.  Put it
	 * into 'name', then shift the rest of the arguments.  This simplifies
	 * 'const' handling.
	 */
	name = FUNC1(new_argv[0], argc, argv);
	new_argc--;
	for (i = 0; i < new_argc; i++)
		new_argv[i] = FUNC1(new_argv[i + 1],
						      argc, argv);

	/* Search for variables */
	res = FUNC6(name, new_argc, new_argv);
	if (res)
		goto free;

	/* Look for built-in functions */
	res = FUNC3(name, new_argc, new_argv);
	if (res)
		goto free;

	/* Last, try environment variable */
	if (new_argc == 0) {
		res = FUNC0(name);
		if (res)
			goto free;
	}

	res = FUNC7("");
free:
	for (i = 0; i < new_argc; i++)
		FUNC2(new_argv[i]);
	FUNC2(name);
free_tmp:
	FUNC2(tmp);

	return res;
}