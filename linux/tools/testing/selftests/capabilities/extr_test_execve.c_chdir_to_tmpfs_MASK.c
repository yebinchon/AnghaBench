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
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	char cwd[PATH_MAX];
	if (FUNC1(cwd, sizeof(cwd)) != cwd)
		FUNC2("getcwd - %s\n", FUNC4(errno));

	if (FUNC3("private_tmp", ".", "tmpfs", 0, "mode=0777") != 0)
		FUNC2("mount private tmpfs - %s\n",
					FUNC4(errno));

	if (FUNC0(cwd) != 0)
		FUNC2("chdir to private tmpfs - %s\n",
					FUNC4(errno));
}