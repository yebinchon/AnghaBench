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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
	int *rcv_fd, cpus;

	cpus = FUNC4(_SC_NPROCESSORS_ONLN);
	if (cpus <= 0)
		FUNC1(1, errno, "failed counting cpus");

	rcv_fd = FUNC0(cpus, sizeof(int));
	if (!rcv_fd)
		FUNC1(1, 0, "failed to allocate array");

	FUNC2(stderr, "---- IPv4 UDP ----\n");
	FUNC5(rcv_fd, cpus, AF_INET, SOCK_DGRAM);

	FUNC2(stderr, "---- IPv6 UDP ----\n");
	FUNC5(rcv_fd, cpus, AF_INET6, SOCK_DGRAM);

	FUNC2(stderr, "---- IPv4 TCP ----\n");
	FUNC5(rcv_fd, cpus, AF_INET, SOCK_STREAM);

	FUNC2(stderr, "---- IPv6 TCP ----\n");
	FUNC5(rcv_fd, cpus, AF_INET6, SOCK_STREAM);

	FUNC3(rcv_fd);

	FUNC2(stderr, "SUCCESS\n");
	return 0;
}