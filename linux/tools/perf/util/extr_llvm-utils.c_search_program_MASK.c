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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char*,char*,char**) ; 

__attribute__((used)) static int
FUNC7(const char *def, const char *name,
	       char *output)
{
	char *env, *path, *tmp = NULL;
	char buf[PATH_MAX];
	int ret;

	output[0] = '\0';
	if (def && def[0] != '\0') {
		if (def[0] == '/') {
			if (FUNC0(def, F_OK) == 0) {
				FUNC5(output, def, PATH_MAX);
				return 0;
			}
		} else if (def[0] != '\0')
			name = def;
	}

	env = FUNC2("PATH");
	if (!env)
		return -1;
	env = FUNC4(env);
	if (!env)
		return -1;

	ret = -ENOENT;
	path = FUNC6(env, ":",  &tmp);
	while (path) {
		FUNC3(buf, sizeof(buf), "%s/%s", path, name);
		if (FUNC0(buf, F_OK) == 0) {
			FUNC5(output, buf, PATH_MAX);
			ret = 0;
			break;
		}
		path = FUNC6(NULL, ":", &tmp);
	}

	FUNC1(env);
	return ret;
}