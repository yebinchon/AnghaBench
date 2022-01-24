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
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
	int *rcv_fd, nodes;

	if (FUNC5() < 0)
		FUNC4("no numa api support\n");

	nodes = FUNC6() + 1;

	rcv_fd = FUNC0(nodes, sizeof(int));
	if (!rcv_fd)
		FUNC1(1, 0, "failed to allocate array");

	FUNC2(stderr, "---- IPv4 UDP ----\n");
	FUNC7(rcv_fd, nodes, AF_INET, SOCK_DGRAM);

	FUNC2(stderr, "---- IPv6 UDP ----\n");
	FUNC7(rcv_fd, nodes, AF_INET6, SOCK_DGRAM);

	FUNC2(stderr, "---- IPv4 TCP ----\n");
	FUNC7(rcv_fd, nodes, AF_INET, SOCK_STREAM);

	FUNC2(stderr, "---- IPv6 TCP ----\n");
	FUNC7(rcv_fd, nodes, AF_INET6, SOCK_STREAM);

	FUNC3(rcv_fd);

	FUNC2(stderr, "SUCCESS\n");
	return 0;
}