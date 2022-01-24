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
typedef  int /*<<< orphan*/  val ;
typedef  int uint16_t ;
struct sockaddr_ll {scalar_t__ sll_ifindex; int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  sll_family; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  PACKET_FANOUT ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(uint16_t typeflags, uint16_t group_id)
{
	struct sockaddr_ll addr = {0};
	int fd, val;

	fd = FUNC8(PF_PACKET, SOCK_RAW, 0);
	if (fd < 0) {
		FUNC6("socket packet");
		FUNC2(1);
	}

	FUNC5(fd);

	addr.sll_family = AF_PACKET;
	addr.sll_protocol = FUNC3(ETH_P_IP);
	addr.sll_ifindex = FUNC4("lo");
	if (addr.sll_ifindex == 0) {
		FUNC6("if_nametoindex");
		FUNC2(1);
	}
	if (FUNC0(fd, (void *) &addr, sizeof(addr))) {
		FUNC6("bind packet");
		FUNC2(1);
	}

	val = (((int) typeflags) << 16) | group_id;
	if (FUNC7(fd, SOL_PACKET, PACKET_FANOUT, &val, sizeof(val))) {
		if (FUNC1(fd)) {
			FUNC6("close packet");
			FUNC2(1);
		}
		return -1;
	}

	return fd;
}