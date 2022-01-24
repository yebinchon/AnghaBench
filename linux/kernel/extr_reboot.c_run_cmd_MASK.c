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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UMH_WAIT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char**,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *cmd)
{
	char **argv;
	static char *envp[] = {
		"HOME=/",
		"PATH=/sbin:/bin:/usr/sbin:/usr/bin",
		NULL
	};
	int ret;
	argv = FUNC1(GFP_KERNEL, cmd, NULL);
	if (argv) {
		ret = FUNC2(argv[0], argv, envp, UMH_WAIT_EXEC);
		FUNC0(argv);
	} else {
		ret = -ENOMEM;
	}

	return ret;
}