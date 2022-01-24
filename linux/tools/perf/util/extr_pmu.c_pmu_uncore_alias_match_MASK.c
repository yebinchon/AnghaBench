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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*,char*,char**) ; 

__attribute__((used)) static bool FUNC6(const char *pmu_name, const char *name)
{
	char *tmp = NULL, *tok, *str;
	bool res;

	str = FUNC1(pmu_name);
	if (!str)
		return false;

	/*
	 * uncore alias may be from different PMU with common prefix
	 */
	tok = FUNC5(str, ",", &tmp);
	if (FUNC3(pmu_name, tok, FUNC2(tok))) {
		res = false;
		goto out;
	}

	/*
	 * Match more complex aliases where the alias name is a comma-delimited
	 * list of tokens, orderly contained in the matching PMU name.
	 *
	 * Example: For alias "socket,pmuname" and PMU "socketX_pmunameY", we
	 *	    match "socket" in "socketX_pmunameY" and then "pmuname" in
	 *	    "pmunameY".
	 */
	for (; tok; name += FUNC2(tok), tok = FUNC5(NULL, ",", &tmp)) {
		name = FUNC4(name, tok);
		if (!name) {
			res = false;
			goto out;
		}
	}

	res = true;
out:
	FUNC0(str);
	return res;
}