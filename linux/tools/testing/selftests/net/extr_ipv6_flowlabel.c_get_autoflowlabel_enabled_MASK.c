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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static bool FUNC4(void)
{
	int fd, ret;
	char val;

	fd = FUNC2("/proc/sys/net/ipv6/auto_flowlabels", O_RDONLY);
	if (fd == -1)
		FUNC1(1, errno, "open sysctl");

	ret = FUNC3(fd, &val, 1);
	if (ret == -1)
		FUNC1(1, errno, "read sysctl");
	if (ret == 0)
		FUNC1(1, 0, "read sysctl: 0");

	if (FUNC0(fd))
		FUNC1(1, errno, "close sysctl");

	return val == '1';
}