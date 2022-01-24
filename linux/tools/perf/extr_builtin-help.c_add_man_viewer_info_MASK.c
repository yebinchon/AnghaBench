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
 int FUNC0 (char const*,int,char const*) ; 
 int FUNC1 (char const*,int,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(const char *var, const char *value)
{
	const char *name = var + 4;
	const char *subkey = FUNC6(name, '.');

	if (!subkey) {
		FUNC3("Config with no key for man viewer: %s", name);
		return -1;
	}

	if (!FUNC5(subkey, ".path")) {
		if (!value)
			return FUNC2(var);
		return FUNC1(name, subkey - name, value);
	}
	if (!FUNC5(subkey, ".cmd")) {
		if (!value)
			return FUNC2(var);
		return FUNC0(name, subkey - name, value);
	}

	FUNC4("'%s': unsupported man viewer sub key.", subkey);
	return 0;
}