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
 int /*<<< orphan*/  PERFPROBE_GROUP ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *exec, char **result)
{
	char *ptr1, *ptr2, *exec_copy;
	char buf[64];
	int ret;

	exec_copy = FUNC4(exec);
	if (!exec_copy)
		return -ENOMEM;

	ptr1 = FUNC0(exec_copy);
	if (!ptr1) {
		ret = -EINVAL;
		goto out;
	}

	for (ptr2 = ptr1; *ptr2 != '\0'; ptr2++) {
		if (!FUNC3(*ptr2) && *ptr2 != '_') {
			*ptr2 = '\0';
			break;
		}
	}

	ret = FUNC1(buf, 64, "%s_%s", PERFPROBE_GROUP, ptr1);
	if (ret < 0)
		goto out;

	*result = FUNC4(buf);
	ret = *result ? 0 : -ENOMEM;

out:
	FUNC2(exec_copy);
	return ret;
}