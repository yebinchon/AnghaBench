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
struct pollfd {int fd; short events; int revents; } ;

/* Variables and functions */
 int POLLIN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct pollfd*,int,int) ; 

__attribute__((used)) static int FUNC2(int fd, short events, int timeout)
{
	struct pollfd pfd;
	int ret;

	pfd.fd = fd;
	pfd.events = events;

	ret = FUNC1(&pfd, 1, timeout);
	if (ret == -1)
		FUNC0(1, errno, "poll");
	if (ret && !(pfd.revents & POLLIN))
		FUNC0(1, errno, "poll: unexpected event 0x%x\n", pfd.revents);

	return ret;
}