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
 int /*<<< orphan*/  FUNC1 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 

__attribute__((used)) static void FUNC8(int *rcv_fd, int len, int family, int proto)
{
	struct epoll_event ev;
	int epfd, node;

	FUNC1(rcv_fd, len, family, proto);
	FUNC0(rcv_fd[0]);

	epfd = FUNC3(1);
	if (epfd < 0)
		FUNC5(1, errno, "failed to create epoll");
	for (node = 0; node < len; ++node) {
		ev.events = EPOLLIN;
		ev.data.fd = rcv_fd[node];
		if (FUNC4(epfd, EPOLL_CTL_ADD, rcv_fd[node], &ev))
			FUNC5(1, errno, "failed to register sock epoll");
	}

	/* Forward iterate */
	for (node = 0; node < len; ++node) {
		FUNC7(node, family, proto);
		FUNC6(rcv_fd, len, epfd, node, proto);
	}

	/* Reverse iterate */
	for (node = len - 1; node >= 0; --node) {
		FUNC7(node, family, proto);
		FUNC6(rcv_fd, len, epfd, node, proto);
	}

	FUNC2(epfd);
	for (node = 0; node < len; ++node)
		FUNC2(rcv_fd[node]);
}