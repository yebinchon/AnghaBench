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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  daddr ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  cpu_set ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PORT ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(int cpu_id, int family, int proto)
{
	struct sockaddr_storage saddr, daddr;
	struct sockaddr_in  *saddr4, *daddr4;
	struct sockaddr_in6 *saddr6, *daddr6;
	cpu_set_t cpu_set;
	int fd;

	switch (family) {
	case AF_INET:
		saddr4 = (struct sockaddr_in *)&saddr;
		saddr4->sin_family = AF_INET;
		saddr4->sin_addr.s_addr = FUNC5(INADDR_ANY);
		saddr4->sin_port = 0;

		daddr4 = (struct sockaddr_in *)&daddr;
		daddr4->sin_family = AF_INET;
		daddr4->sin_addr.s_addr = FUNC5(INADDR_LOOPBACK);
		daddr4->sin_port = FUNC6(PORT);
		break;
	case AF_INET6:
		saddr6 = (struct sockaddr_in6 *)&saddr;
		saddr6->sin6_family = AF_INET6;
		saddr6->sin6_addr = in6addr_any;
		saddr6->sin6_port = 0;

		daddr6 = (struct sockaddr_in6 *)&daddr;
		daddr6->sin6_family = AF_INET6;
		daddr6->sin6_addr = in6addr_loopback;
		daddr6->sin6_port = FUNC6(PORT);
		break;
	default:
		FUNC4(1, 0, "Unsupported family %d", family);
	}

	FUNC7(&cpu_set, 0, sizeof(cpu_set));
	FUNC0(cpu_id, &cpu_set);
	if (FUNC8(0, sizeof(cpu_set), &cpu_set) < 0)
		FUNC4(1, errno, "failed to pin to cpu");

	fd = FUNC10(family, proto, 0);
	if (fd < 0)
		FUNC4(1, errno, "failed to create send socket");

	if (FUNC1(fd, (struct sockaddr *)&saddr, sizeof(saddr)))
		FUNC4(1, errno, "failed to bind send socket");

	if (FUNC3(fd, (struct sockaddr *)&daddr, sizeof(daddr)))
		FUNC4(1, errno, "failed to connect send socket");

	if (FUNC9(fd, "a", 1, 0) < 0)
		FUNC4(1, errno, "failed to send message");

	FUNC2(fd);
}