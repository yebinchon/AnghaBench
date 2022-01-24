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
 int /*<<< orphan*/  AT_SECURE ; 
 int /*<<< orphan*/  CAPNG_EFFECTIVE ; 
 int /*<<< orphan*/  CAPNG_INHERITABLE ; 
 int /*<<< orphan*/  CAPNG_PERMITTED ; 
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_IS_SET ; 
 scalar_t__ FUNC0 (char**,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char **argv)
{
	const char *atsec = "";

	/*
	 * Be careful just in case a setgid or setcapped copy of this
	 * helper gets out.
	 */

	if (argc != 5)
		FUNC4("wrong argc\n");

#ifdef HAVE_GETAUXVAL
	if (getauxval(AT_SECURE))
		atsec = " (AT_SECURE is set)";
	else
		atsec = " (AT_SECURE is not set)";
#endif

	FUNC1();

	if (FUNC2(CAPNG_EFFECTIVE, CAP_NET_BIND_SERVICE) != FUNC0(argv, 1)) {
		FUNC5("Wrong effective state%s\n", atsec);
		return 1;
	}

	if (FUNC2(CAPNG_PERMITTED, CAP_NET_BIND_SERVICE) != FUNC0(argv, 2)) {
		FUNC5("Wrong permitted state%s\n", atsec);
		return 1;
	}

	if (FUNC2(CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE) != FUNC0(argv, 3)) {
		FUNC5("Wrong inheritable state%s\n", atsec);
		return 1;
	}

	if (FUNC6(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != FUNC0(argv, 4)) {
		FUNC5("Wrong ambient state%s\n", atsec);
		return 1;
	}

	FUNC5("%s: Capabilities after execve were correct\n",
			"validate_cap:");
	return 0;
}