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
struct evsel {int dummy; } ;

/* Variables and functions */
 int SCRIPT_FULLPATH_LEN ; 
 scalar_t__ FUNC0 (char**,char*,char*,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* input_name ; 
 scalar_t__ FUNC2 (char*,int*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(const char *script_opt, struct evsel *evsel)
{
	char *cmd, script_name[SCRIPT_FULLPATH_LEN];
	bool custom = false;

	FUNC3(script_name, 0, SCRIPT_FULLPATH_LEN);
	if (FUNC2(script_name, &custom, evsel))
		return -1;

	if (FUNC0(&cmd, "%s%s %s %s%s 2>&1 | less",
			custom ? "perf script -s " : "",
			script_name,
			script_opt ? script_opt : "",
			input_name ? "-i " : "",
			input_name ? input_name : "") < 0)
		return -1;

	FUNC4(cmd);
	FUNC1(cmd);

	return 0;
}