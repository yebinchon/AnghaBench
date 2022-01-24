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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int help ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(int *argc, const char ***argv)
{
	while (*argc > 0) {
		const char *cmd = (*argv)[0];

		if (cmd[0] != '-')
			break;

		if (!FUNC2(cmd, "--help") || !FUNC2(cmd, "-h")) {
			help = true;
			break;
		} else {
			FUNC1(stderr, "Unknown option: %s\n", cmd);
			FUNC0();
		}

		(*argv)++;
		(*argc)--;
	}
}