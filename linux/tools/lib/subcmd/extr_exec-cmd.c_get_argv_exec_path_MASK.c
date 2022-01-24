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
struct TYPE_2__ {int /*<<< orphan*/  exec_path; int /*<<< orphan*/  exec_path_env; } ;

/* Variables and functions */
 char* argv_exec_path ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 TYPE_1__ subcmd_config ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

char *FUNC3(void)
{
	char *env;

	if (argv_exec_path)
		return FUNC1(argv_exec_path);

	env = FUNC0(subcmd_config.exec_path_env);
	if (env && *env)
		return FUNC1(env);

	return FUNC2(subcmd_config.exec_path);
}