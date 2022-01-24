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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	int rcv_fds[32], i;

	FUNC2(stderr, "---- UDP IPv4 created before IPv6 ----\n");
	FUNC0(AF_INET, SOCK_DGRAM, rcv_fds, 5);
	FUNC0(AF_INET6, SOCK_DGRAM, &(rcv_fds[5]), 5);
	FUNC3(rcv_fds, 10, SOCK_DGRAM);
	for (i = 0; i < 10; ++i)
		FUNC1(rcv_fds[i]);

	FUNC2(stderr, "---- UDP IPv6 created before IPv4 ----\n");
	FUNC0(AF_INET6, SOCK_DGRAM, rcv_fds, 5);
	FUNC0(AF_INET, SOCK_DGRAM, &(rcv_fds[5]), 5);
	FUNC3(rcv_fds, 10, SOCK_DGRAM);
	for (i = 0; i < 10; ++i)
		FUNC1(rcv_fds[i]);

	/* NOTE: UDP socket lookups traverse a different code path when there
	 * are > 10 sockets in a group.
	 */
	FUNC2(stderr, "---- UDP IPv4 created before IPv6 (large) ----\n");
	FUNC0(AF_INET, SOCK_DGRAM, rcv_fds, 16);
	FUNC0(AF_INET6, SOCK_DGRAM, &(rcv_fds[16]), 16);
	FUNC3(rcv_fds, 32, SOCK_DGRAM);
	for (i = 0; i < 32; ++i)
		FUNC1(rcv_fds[i]);

	FUNC2(stderr, "---- UDP IPv6 created before IPv4 (large) ----\n");
	FUNC0(AF_INET6, SOCK_DGRAM, rcv_fds, 16);
	FUNC0(AF_INET, SOCK_DGRAM, &(rcv_fds[16]), 16);
	FUNC3(rcv_fds, 32, SOCK_DGRAM);
	for (i = 0; i < 32; ++i)
		FUNC1(rcv_fds[i]);

	FUNC2(stderr, "---- TCP IPv4 created before IPv6 ----\n");
	FUNC0(AF_INET, SOCK_STREAM, rcv_fds, 5);
	FUNC0(AF_INET6, SOCK_STREAM, &(rcv_fds[5]), 5);
	FUNC3(rcv_fds, 10, SOCK_STREAM);
	for (i = 0; i < 10; ++i)
		FUNC1(rcv_fds[i]);

	FUNC2(stderr, "---- TCP IPv6 created before IPv4 ----\n");
	FUNC0(AF_INET6, SOCK_STREAM, rcv_fds, 5);
	FUNC0(AF_INET, SOCK_STREAM, &(rcv_fds[5]), 5);
	FUNC3(rcv_fds, 10, SOCK_STREAM);
	for (i = 0; i < 10; ++i)
		FUNC1(rcv_fds[i]);

	FUNC2(stderr, "SUCCESS\n");
	return 0;
}