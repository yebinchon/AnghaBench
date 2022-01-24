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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 char* FUNC0 (char*) ; 
 int be_verbose ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_chosen ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(int *argc, const char ***argv)
{
	int ret, x, new_argc = 0;

	if (*argc < 1)
		return;

	for (x = 0;  x < *argc && ((*argv)[x])[0] == '-'; x++) {
		const char *param = (*argv)[x];
		if (!FUNC7(param, "-h") || !FUNC7(param, "--help")) {
			FUNC5();
			FUNC3(EXIT_SUCCESS);
		} else if (!FUNC7(param, "-c") || !FUNC7(param, "--cpu")) {
			if (*argc < 2) {
				FUNC5();
				FUNC3(EXIT_FAILURE);
			}
			if (!FUNC7((*argv)[x+1], "all"))
				FUNC2(cpus_chosen);
			else {
				ret = FUNC1(
						(*argv)[x+1], cpus_chosen);
				if (ret < 0) {
					FUNC4(stderr, "%s", FUNC0("Error parsing cpu "
							  "list\n"));
					FUNC3(EXIT_FAILURE);
				}
			}
			x += 1;
			/* Cut out param: cpupower -c 1 info -> cpupower info */
			new_argc += 2;
			continue;
		} else if (!FUNC7(param, "-v") ||
			!FUNC7(param, "--version")) {
			FUNC6();
			FUNC3(EXIT_SUCCESS);
#ifdef DEBUG
		} else if (!strcmp(param, "-d") || !strcmp(param, "--debug")) {
			be_verbose = 1;
			new_argc++;
			continue;
#endif
		} else {
			FUNC4(stderr, "Unknown option: %s\n", param);
			FUNC5();
			FUNC3(EXIT_FAILURE);
		}
	}
	*argc -= new_argc;
	*argv += new_argc;
}