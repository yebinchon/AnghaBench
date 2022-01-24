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
struct sockaddr_nl {int /*<<< orphan*/  nl_pid; int /*<<< orphan*/  nl_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 int LIBBPF_ERRNO__INTERNAL ; 
 int /*<<< orphan*/  NETLINK_EXT_ACK ; 
 int /*<<< orphan*/  NETLINK_ROUTE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_NETLINK ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_nl*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(__u32 *nl_pid)
{
	struct sockaddr_nl sa;
	socklen_t addrlen;
	int one = 1, ret;
	int sock;

	FUNC4(&sa, 0, sizeof(sa));
	sa.nl_family = AF_NETLINK;

	sock = FUNC6(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
	if (sock < 0)
		return -errno;

	if (FUNC5(sock, SOL_NETLINK, NETLINK_EXT_ACK,
		       &one, sizeof(one)) < 0) {
		FUNC2(stderr, "Netlink error reporting not supported\n");
	}

	if (FUNC0(sock, (struct sockaddr *)&sa, sizeof(sa)) < 0) {
		ret = -errno;
		goto cleanup;
	}

	addrlen = sizeof(sa);
	if (FUNC3(sock, (struct sockaddr *)&sa, &addrlen) < 0) {
		ret = -errno;
		goto cleanup;
	}

	if (addrlen != sizeof(sa)) {
		ret = -LIBBPF_ERRNO__INTERNAL;
		goto cleanup;
	}

	*nl_pid = sa.nl_pid;
	return sock;

cleanup:
	FUNC1(sock);
	return ret;
}