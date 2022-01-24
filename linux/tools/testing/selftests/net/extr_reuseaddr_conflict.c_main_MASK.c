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
 int PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(void)
{
	int listenfd;
	int fd1, fd2;

	FUNC2(stderr, "Opening 127.0.0.1:%d\n", PORT);
	listenfd = FUNC3(0, 0);
	if (listenfd < 0)
		FUNC1(1, errno, "Couldn't open listen socket");
	FUNC2(stderr, "Opening INADDR_ANY:%d\n", PORT);
	fd1 = FUNC3(0, 1);
	if (fd1 >= 0)
		FUNC1(1, 0, "Was allowed to create an ipv4 reuseport on a already bound non-reuseport socket");
	FUNC2(stderr, "Opening in6addr_any:%d\n", PORT);
	fd1 = FUNC3(1, 1);
	if (fd1 < 0)
		FUNC1(1, errno, "Couldn't open ipv6 reuseport");
	FUNC2(stderr, "Opening INADDR_ANY:%d\n", PORT);
	fd2 = FUNC3(0, 1);
	if (fd2 >= 0)
		FUNC1(1, 0, "Was allowed to create an ipv4 reuseport on a already bound non-reuseport socket");
	FUNC0(fd1);
	FUNC2(stderr, "Opening INADDR_ANY:%d after closing ipv6 socket\n", PORT);
	fd1 = FUNC3(0, 1);
	if (fd1 >= 0)
		FUNC1(1, 0, "Was allowed to create an ipv4 reuseport on an already bound non-reuseport socket with no ipv6");
	FUNC2(stderr, "Success");
	return 0;
}