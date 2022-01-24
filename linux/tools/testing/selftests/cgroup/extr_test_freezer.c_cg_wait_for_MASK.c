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
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct pollfd*,int,int) ; 

__attribute__((used)) static int FUNC2(int fd)
{
	int ret = -1;
	struct pollfd fds = {
		.fd = fd,
		.events = POLLIN,
	};

	while (true) {
		ret = FUNC1(&fds, 1, 10000);

		if (ret == -1) {
			if (errno == EINTR)
				continue;
			FUNC0("Error: poll() failed\n");
			break;
		}

		if (ret > 0 && fds.revents & POLLIN) {
			ret = 0;
			break;
		}
	}

	return ret;
}