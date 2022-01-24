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
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,char const*) ; 

int FUNC4(char *root, size_t len)
{
	char buf[10 * PAGE_SIZE];
	char *fs, *mount, *type;
	const char delim[] = "\n\t ";

	if (FUNC0("/proc/self/mounts", buf, sizeof(buf)) <= 0)
		return -1;

	/*
	 * Example:
	 * cgroup /sys/fs/cgroup cgroup2 rw,seclabel,noexec,relatime 0 0
	 */
	for (fs = FUNC3(buf, delim); fs; fs = FUNC3(NULL, delim)) {
		mount = FUNC3(NULL, delim);
		type = FUNC3(NULL, delim);
		FUNC3(NULL, delim);
		FUNC3(NULL, delim);
		FUNC3(NULL, delim);

		if (FUNC1(type, "cgroup2") == 0) {
			FUNC2(root, mount, len);
			return 0;
		}
	}

	return -1;
}