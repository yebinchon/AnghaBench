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
struct sockaddr_ll {int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sll ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(const char *name)
{
	struct sockaddr_ll sll;
	int sock;

	sock = FUNC6(PF_PACKET, SOCK_RAW | SOCK_NONBLOCK | SOCK_CLOEXEC, FUNC2(ETH_P_ALL));
	if (sock < 0) {
		FUNC5("cannot create raw socket\n");
		return -1;
	}

	FUNC4(&sll, 0, sizeof(sll));
	sll.sll_family = AF_PACKET;
	sll.sll_ifindex = FUNC3(name);
	sll.sll_protocol = FUNC2(ETH_P_ALL);
	if (FUNC0(sock, (struct sockaddr *)&sll, sizeof(sll)) < 0) {
		FUNC5("bind to %s: %s\n", name, FUNC7(errno));
		FUNC1(sock);
		return -1;
	}

	return sock;
}