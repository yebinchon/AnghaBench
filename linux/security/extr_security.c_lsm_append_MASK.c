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
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int FUNC4(const char *new, char **result)
{
	char *cp;

	if (*result == NULL) {
		*result = FUNC2(new, GFP_KERNEL);
		if (*result == NULL)
			return -ENOMEM;
	} else {
		/* Check if it is the last registered name */
		if (FUNC3(*result, new))
			return 0;
		cp = FUNC0(GFP_KERNEL, "%s,%s", *result, new);
		if (cp == NULL)
			return -ENOMEM;
		FUNC1(*result);
		*result = cp;
	}
	return 0;
}