#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  raddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  cfg_port ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct timeval tv = { .tv_usec = 100 * 1000 };
	struct sockaddr_in raddr = {0};
	int fd;

	fd = FUNC5(PF_INET, SOCK_DGRAM, 0);
	if (fd == -1)
		FUNC1(1, errno, "socket r");

	if (FUNC4(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
		FUNC1(1, errno, "setsockopt rcv timeout");

	raddr.sin_family = AF_INET;
	raddr.sin_port = FUNC3(cfg_port);
	raddr.sin_addr.s_addr = FUNC2(INADDR_ANY);

	if (FUNC0(fd, (void *)&raddr, sizeof(raddr)))
		FUNC1(1, errno, "bind r");

	return fd;
}