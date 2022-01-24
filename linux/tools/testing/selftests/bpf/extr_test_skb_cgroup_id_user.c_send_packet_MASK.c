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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LINKLOCAL_MULTICAST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,struct sockaddr_in6*) ; 
 int FUNC3 (int,char**,int,int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *iface)
{
	struct sockaddr_in6 dst;
	char msg[] = "msg";
	int err = 0;
	int fd = -1;

	if (FUNC2(LINKLOCAL_MULTICAST, iface, &dst))
		goto err;

	fd = FUNC4(AF_INET6, SOCK_DGRAM, 0);
	if (fd == -1) {
		FUNC1("Failed to create UDP socket");
		goto err;
	}

	if (FUNC3(fd, &msg, sizeof(msg), 0, (const struct sockaddr *)&dst,
		   sizeof(dst)) == -1) {
		FUNC1("Failed to send datagram");
		goto err;
	}

	goto out;
err:
	err = -1;
out:
	if (fd >= 0)
		FUNC0(fd);
	return err;
}