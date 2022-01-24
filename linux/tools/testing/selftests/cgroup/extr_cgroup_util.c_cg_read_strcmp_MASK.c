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
 scalar_t__ FUNC0 (char const*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const char *cgroup, const char *control,
		   const char *expected)
{
	size_t size;
	char *buf;
	int ret;

	/* Handle the case of comparing against empty string */
	if (!expected)
		size = 32;
	else
		size = FUNC4(expected) + 1;

	buf = FUNC2(size);
	if (!buf)
		return -1;

	if (FUNC0(cgroup, control, buf, size)) {
		FUNC1(buf);
		return -1;
	}

	ret = FUNC3(expected, buf);
	FUNC1(buf);
	return ret;
}