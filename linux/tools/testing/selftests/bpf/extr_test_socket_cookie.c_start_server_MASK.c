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
struct sockaddr_in6 {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct sockaddr_in6 addr;
	int fd;

	fd = FUNC5(AF_INET6, SOCK_STREAM, 0);
	if (fd == -1) {
		FUNC3("Failed to create server socket");
		goto out;
	}

	FUNC4(&addr, 0, sizeof(addr));
	addr.sin6_family = AF_INET6;
	addr.sin6_addr = in6addr_loopback;
	addr.sin6_port = 0;

	if (FUNC0(fd, (const struct sockaddr *)&addr, sizeof(addr)) == -1) {
		FUNC3("Failed to bind server socket");
		goto close_out;
	}

	if (FUNC2(fd, 128) == -1) {
		FUNC3("Failed to listen on server socket");
		goto close_out;
	}

	goto out;

close_out:
	FUNC1(fd);
	fd = -1;
out:
	return fd;
}