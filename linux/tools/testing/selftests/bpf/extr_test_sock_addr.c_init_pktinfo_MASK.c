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
struct in_pktinfo {int /*<<< orphan*/  ipi6_addr; int /*<<< orphan*/  ipi_spec_dst; } ;
struct in6_pktinfo {int /*<<< orphan*/  ipi6_addr; int /*<<< orphan*/  ipi_spec_dst; } ;
struct cmsghdr {void* cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  IPV6_PKTINFO ; 
 int /*<<< orphan*/  IP_PKTINFO ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 int /*<<< orphan*/  SRC4_IP ; 
 int /*<<< orphan*/  SRC6_IP ; 
 int FUNC2 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_pktinfo*,int /*<<< orphan*/ ,int) ; 

int FUNC4(int domain, struct cmsghdr *cmsg)
{
	struct in6_pktinfo *pktinfo6;
	struct in_pktinfo *pktinfo4;

	if (domain == AF_INET) {
		cmsg->cmsg_level = SOL_IP;
		cmsg->cmsg_type = IP_PKTINFO;
		cmsg->cmsg_len = FUNC1(sizeof(struct in_pktinfo));
		pktinfo4 = (struct in_pktinfo *)FUNC0(cmsg);
		FUNC3(pktinfo4, 0, sizeof(struct in_pktinfo));
		if (FUNC2(domain, SRC4_IP,
			      (void *)&pktinfo4->ipi_spec_dst) != 1)
			return -1;
	} else if (domain == AF_INET6) {
		cmsg->cmsg_level = SOL_IPV6;
		cmsg->cmsg_type = IPV6_PKTINFO;
		cmsg->cmsg_len = FUNC1(sizeof(struct in6_pktinfo));
		pktinfo6 = (struct in6_pktinfo *)FUNC0(cmsg);
		FUNC3(pktinfo6, 0, sizeof(struct in6_pktinfo));
		if (FUNC2(domain, SRC6_IP,
			      (void *)&pktinfo6->ipi6_addr) != 1)
			return -1;
	} else {
		return -1;
	}

	return 0;
}