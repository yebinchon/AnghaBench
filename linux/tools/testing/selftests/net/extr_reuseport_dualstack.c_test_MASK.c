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
typedef  int /*<<< orphan*/  test_family ;
struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(int *rcv_fds, int count, int proto)
{
	struct epoll_event ev;
	int epfd, i, test_fd;
	int test_family;
	socklen_t len;

	epfd = FUNC1(1);
	if (epfd < 0)
		FUNC3(1, errno, "failed to create epoll");

	ev.events = EPOLLIN;
	for (i = 0; i < count; ++i) {
		ev.data.fd = rcv_fds[i];
		if (FUNC2(epfd, EPOLL_CTL_ADD, rcv_fds[i], &ev))
			FUNC3(1, errno, "failed to register sock epoll");
	}

	FUNC6(proto);

	test_fd = FUNC5(epfd, proto);
	len = sizeof(test_family);
	if (FUNC4(test_fd, SOL_SOCKET, SO_DOMAIN, &test_family, &len))
		FUNC3(1, errno, "failed to read socket domain");
	if (test_family != AF_INET)
		FUNC3(1, 0, "expected to receive on v4 socket but got v6 (%d)",
		      test_family);

	FUNC0(epfd);
}