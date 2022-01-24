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
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char **argv)
{
	int fd;

	FUNC2(argc, argv);

	fd = FUNC4(PF_INET6, SOCK_DGRAM, 0);
	if (fd == -1)
		FUNC1(1, errno, "socket");

	FUNC3(fd);

	if (FUNC0(fd))
		FUNC1(1, errno, "close");

	return 0;
}