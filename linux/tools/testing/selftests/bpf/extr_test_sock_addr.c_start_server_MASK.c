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
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int type, const struct sockaddr_storage *addr,
			socklen_t addr_len)
{
	int fd;

	fd = FUNC4(addr->ss_family, type, 0);
	if (fd == -1) {
		FUNC3("Failed to create server socket");
		goto out;
	}

	if (FUNC0(fd, (const struct sockaddr *)addr, addr_len) == -1) {
		FUNC3("Failed to bind server socket");
		goto close_out;
	}

	if (type == SOCK_STREAM) {
		if (FUNC2(fd, 128) == -1) {
			FUNC3("Failed to listen on server socket");
			goto close_out;
		}
	}

	goto out;
close_out:
	FUNC1(fd);
	fd = -1;
out:
	return fd;
}