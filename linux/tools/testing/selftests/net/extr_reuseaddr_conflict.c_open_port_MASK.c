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
typedef  int /*<<< orphan*/  v6only ;
struct sockaddr_in6 {int sin6_family; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  reuseaddr ;
typedef  int /*<<< orphan*/  addr6 ;
typedef  int /*<<< orphan*/  addr4 ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(int ipv6, int any)
{
	int fd = -1;
	int reuseaddr = 1;
	int v6only = 1;
	int addrlen;
	int ret = -1;
	struct sockaddr *addr;
	int family = ipv6 ? AF_INET6 : AF_INET;

	struct sockaddr_in6 addr6 = {
		.sin6_family = AF_INET6,
		.sin6_port = FUNC3(PORT),
		.sin6_addr = in6addr_any
	};
	struct sockaddr_in addr4 = {
		.sin_family = AF_INET,
		.sin_port = FUNC3(PORT),
		.sin_addr.s_addr = any ? FUNC2(INADDR_ANY) : FUNC4("127.0.0.1"),
	};


	if (ipv6) {
		addr = (struct sockaddr*)&addr6;
		addrlen = sizeof(addr6);
	} else {
		addr = (struct sockaddr*)&addr4;
		addrlen = sizeof(addr4);
	}

	if ((fd = FUNC8(family, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		FUNC6("socket");
		goto out;
	}

	if (ipv6 && FUNC7(fd, IPPROTO_IPV6, IPV6_V6ONLY, (void*)&v6only,
			       sizeof(v6only)) < 0) {
		FUNC6("setsockopt IPV6_V6ONLY");
		goto out;
	}

	if (FUNC7(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr,
		       sizeof(reuseaddr)) < 0) {
		FUNC6("setsockopt SO_REUSEADDR");
		goto out;
	}

	if (FUNC0(fd, addr, addrlen) < 0) {
		FUNC6("bind");
		goto out;
	}

	if (any)
		return fd;

	if (FUNC5(fd, 1) < 0) {
		FUNC6("listen");
		goto out;
	}
	return fd;
out:
	FUNC1(fd);
	return ret;
}