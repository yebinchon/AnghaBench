#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_2__ imr_address; TYPE_1__ imr_multiaddr; } ;
typedef  int /*<<< orphan*/  mreq ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_ADD_MEMBERSHIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_mreqn*,int) ; 

__attribute__((used)) static int FUNC4(int sd, uint32_t grp, uint32_t addr, int ifindex)
{
	uint32_t if_addr = addr;
	struct ip_mreqn mreq;
	int rc;

	if (addr == FUNC0(INADDR_ANY) && !ifindex) {
		FUNC2("Either local address or device needs to be given for multicast membership\n");
		return -1;
	}

	mreq.imr_multiaddr.s_addr = grp;
	mreq.imr_address.s_addr = if_addr;
	mreq.imr_ifindex = ifindex;

	rc = FUNC3(sd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq, sizeof(mreq));
	if (rc < 0) {
		FUNC1("setsockopt(IP_ADD_MEMBERSHIP)");
		return -1;
	}

	return 0;
}