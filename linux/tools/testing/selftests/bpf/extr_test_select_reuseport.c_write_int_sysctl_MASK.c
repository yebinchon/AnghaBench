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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*,int,int,...) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(const char *sysctl, int v)
{
	int fd, ret, size;
	char buf[16];

	fd = FUNC2(sysctl, O_RDWR);
	FUNC0(fd == -1, "open(sysctl)", "sysctl:%s fd:%d errno:%d\n",
	      sysctl, fd, errno);

	size = FUNC3(buf, sizeof(buf), "%d", v);
	ret = FUNC4(fd, buf, size);
	FUNC0(ret != size, "write(sysctl)",
	      "sysctl:%s ret:%d size:%d errno:%d\n", sysctl, ret, size, errno);
	FUNC1(fd);
}