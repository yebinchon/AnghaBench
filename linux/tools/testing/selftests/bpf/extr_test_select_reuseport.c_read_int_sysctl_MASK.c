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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static int FUNC5(const char *sysctl)
{
	char buf[16];
	int fd, ret;

	fd = FUNC3(sysctl, 0);
	FUNC0(fd == -1, "open(sysctl)", "sysctl:%s fd:%d errno:%d\n",
	      sysctl, fd, errno);

	ret = FUNC4(fd, buf, sizeof(buf));
	FUNC0(ret <= 0, "read(sysctl)", "sysctl:%s ret:%d errno:%d\n",
	      sysctl, ret, errno);
	FUNC2(fd);

	return FUNC1(buf);
}