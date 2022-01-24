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
 int E2BIG ; 
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PATH_MAX ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static char *FUNC9(char *link)
{
	int len, n;
	char *name, *resolved, *end;

	name = FUNC1();
	if (!name) {
		n = -ENOMEM;
		goto out_free;
	}

	n = FUNC3(link, name, PATH_MAX);
	if (n < 0)
		goto out_free;
	else if (n == PATH_MAX) {
		n = -E2BIG;
		goto out_free;
	}

	if (*name == '/')
		return name;

	end = FUNC8(link, '/');
	if (end == NULL)
		return name;

	*(end + 1) = '\0';
	len = FUNC7(link) + FUNC7(name) + 1;

	resolved = FUNC5(len, GFP_KERNEL);
	if (resolved == NULL) {
		n = -ENOMEM;
		goto out_free;
	}

	FUNC6(resolved, "%s%s", link, name);
	FUNC2(name);
	FUNC4(link);
	return resolved;

 out_free:
	FUNC2(name);
	return FUNC0(n);
}