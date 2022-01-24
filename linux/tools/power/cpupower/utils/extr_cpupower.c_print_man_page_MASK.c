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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *subpage)
{
	int len;
	char *page;

	len = 10; /* enough for "cpupower-" */
	if (subpage != NULL)
		len += FUNC5(subpage);

	page = FUNC1(len);
	if (!page)
		return -ENOMEM;

	FUNC2(page, "cpupower");
	if ((subpage != NULL) && FUNC4(subpage, "help")) {
		FUNC3(page, "-");
		FUNC3(page, subpage);
	}

	FUNC0("man", "man", page, NULL);

	/* should not be reached */
	return -EINVAL;
}