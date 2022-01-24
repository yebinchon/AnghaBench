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
 long FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 long FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(const char *cgroup, void *arg)
{
	size_t size = FUNC0(50);
	int ret = -1;
	long current;
	int fd;

	fd = FUNC4();
	if (fd < 0)
		return -1;

	if (FUNC1(fd, size))
		goto cleanup;

	current = FUNC2(cgroup, "memory.current");
	if (current <= FUNC0(29) || current > FUNC0(30))
		goto cleanup;

	ret = 0;

cleanup:
	FUNC3(fd);
	return ret;

}