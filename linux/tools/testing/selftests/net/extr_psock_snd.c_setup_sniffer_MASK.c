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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct timeval tv = { .tv_usec = 100 * 1000 };
	int fd;

	fd = FUNC4(PF_PACKET, SOCK_RAW, 0);
	if (fd == -1)
		FUNC1(1, errno, "socket p");

	if (FUNC3(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
		FUNC1(1, errno, "setsockopt rcv timeout");

	FUNC2(fd);
	FUNC0(fd);

	return fd;
}