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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr const*,int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int server_fd)
{
	struct sockaddr_storage addr;
	socklen_t len = sizeof(addr);
	int fd;

	fd = FUNC4(AF_INET, SOCK_STREAM, 0);
	if (fd < 0) {
		FUNC3("Failed to create client socket");
		return -1;
	}

	if (FUNC2(server_fd, (struct sockaddr *)&addr, &len)) {
		FUNC3("Failed to get server addr");
		goto out;
	}

	if (FUNC1(fd, (const struct sockaddr *)&addr, len) < 0) {
		FUNC3("Fail to connect to server");
		goto out;
	}

	return fd;

out:
	FUNC0(fd);
	return -1;
}