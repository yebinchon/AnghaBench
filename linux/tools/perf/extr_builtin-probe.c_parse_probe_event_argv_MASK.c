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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv)
{
	int i, len, ret, found_target;
	char *buf;

	found_target = FUNC2(argv[0]);
	if (found_target < 0)
		return found_target;

	if (found_target && argc == 1)
		return 0;

	/* Bind up rest arguments */
	len = 0;
	for (i = 0; i < argc; i++) {
		if (i == 0 && found_target)
			continue;

		len += FUNC4(argv[i]) + 1;
	}
	buf = FUNC5(len + 1);
	if (buf == NULL)
		return -ENOMEM;
	len = 0;
	for (i = 0; i < argc; i++) {
		if (i == 0 && found_target)
			continue;

		len += FUNC3(&buf[len], "%s ", argv[i]);
	}
	ret = FUNC1(buf);
	FUNC0(buf);
	return ret;
}