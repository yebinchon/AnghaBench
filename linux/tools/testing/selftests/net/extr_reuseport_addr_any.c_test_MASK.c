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
struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(int *rcv_fds, int count, int family, int proto, int fd)
{
	struct epoll_event ev;
	int epfd, i, send_fd, recv_fd;

	epfd = FUNC2(1);
	if (epfd < 0)
		FUNC4(1, errno, "failed to create epoll");

	ev.events = EPOLLIN;
	for (i = 0; i < count; ++i) {
		ev.data.fd = rcv_fds[i];
		if (FUNC3(epfd, EPOLL_CTL_ADD, rcv_fds[i], &ev))
			FUNC4(1, errno, "failed to register sock epoll");
	}

	send_fd = FUNC1(family, proto);

	recv_fd = FUNC5(epfd, proto);
	if (recv_fd != fd)
		FUNC4(1, 0, "received on an unexpected socket");

	FUNC0(send_fd);
	FUNC0(epfd);
}