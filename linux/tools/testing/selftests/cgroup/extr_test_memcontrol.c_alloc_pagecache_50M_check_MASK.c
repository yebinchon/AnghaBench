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
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 long FUNC2 (char const*,char*,char*) ; 
 long FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (long,long,int) ; 

__attribute__((used)) static int FUNC7(const char *cgroup, void *arg)
{
	size_t size = FUNC0(50);
	int ret = -1;
	long current, file;
	int fd;

	fd = FUNC5();
	if (fd < 0)
		return -1;

	if (FUNC1(fd, size))
		goto cleanup;

	current = FUNC3(cgroup, "memory.current");
	if (current < size)
		goto cleanup;

	file = FUNC2(cgroup, "memory.stat", "file ");
	if (file < 0)
		goto cleanup;

	if (!FUNC6(file, current, 10))
		goto cleanup;

	ret = 0;

cleanup:
	FUNC4(fd);
	return ret;
}