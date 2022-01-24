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
typedef  int /*<<< orphan*/  new_msr ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,unsigned long long) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned long long*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int cpu, int offset, unsigned long long new_msr)
{
	char pathname[32];
	int retval;
	int fd;

	FUNC5(pathname, "/dev/cpu/%d/msr", cpu);
	fd = FUNC3(pathname, O_RDWR);
	if (fd < 0)
		FUNC1(-1, "%s open failed, try chown or chmod +r /dev/cpu/*/msr, or run as root", pathname);

	retval = FUNC4(fd, &new_msr, sizeof(new_msr), offset);
	if (retval != sizeof(new_msr))
		FUNC1(-2, "pwrite(cpu%d, offset 0x%x, 0x%llx) = %d", cpu, offset, new_msr, retval);

	FUNC0(fd);

	if (debug > 1)
		FUNC2(stderr, "put_msr(cpu%d, 0x%X, 0x%llX)\n", cpu, offset, new_msr);

	return 0;
}