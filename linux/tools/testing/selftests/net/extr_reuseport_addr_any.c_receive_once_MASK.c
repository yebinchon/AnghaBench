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
struct epoll_event {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SOCK_DCCP ; 
 int SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int epfd, int proto)
{
	struct epoll_event ev;
	int i, fd;
	char buf[8];

	i = FUNC2(epfd, &ev, 1, 3);
	if (i < 0)
		FUNC3(1, errno, "epoll_wait failed");

	if (proto == SOCK_STREAM || proto == SOCK_DCCP) {
		fd = FUNC0(ev.data.fd, NULL, NULL);
		if (fd < 0)
			FUNC3(1, errno, "failed to accept");
		i = FUNC4(fd, buf, sizeof(buf), 0);
		FUNC1(fd);
	} else {
		i = FUNC4(ev.data.fd, buf, sizeof(buf), 0);
	}

	if (i < 0)
		FUNC3(1, errno, "failed to recv");

	return ev.data.fd;
}