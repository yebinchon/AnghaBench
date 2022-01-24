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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,unsigned long long) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned long long*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int cpu, int offset, unsigned long long *msr)
{
	int retval;
	char pathname[32];
	int fd;

	FUNC5(pathname, "/dev/cpu/%d/msr", cpu);
	fd = FUNC3(pathname, O_RDONLY);
	if (fd < 0)
		FUNC1(-1, "%s open failed, try chown or chmod +r /dev/cpu/*/msr, or run as root", pathname);

	retval = FUNC4(fd, msr, sizeof(*msr), offset);
	if (retval != sizeof(*msr))
		FUNC1(-1, "%s offset 0x%llx read failed", pathname, (unsigned long long)offset);

	if (debug > 1)
		FUNC2(stderr, "get_msr(cpu%d, 0x%X, 0x%llX)\n", cpu, offset, *msr);

	FUNC0(fd);
	return 0;
}