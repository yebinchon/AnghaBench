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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_ll {int sll_halen; scalar_t__ ss_family; struct sockaddr_ll* sll_addr; void* sll_protocol; int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_namelen; struct iovec* msg_iov; struct sockaddr_ll* msg_name; int /*<<< orphan*/  member_0; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct iovec {int iov_len; struct ethhdr* iov_base; int /*<<< orphan*/  member_0; } ;
struct ethhdr {void* h_proto; struct sockaddr_ll* h_source; struct sockaddr_ll* h_dest; } ;
typedef  int /*<<< orphan*/  laddr ;
typedef  int /*<<< orphan*/  eth ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  AF_PACKET ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int IPPROTO_RAW ; 
 scalar_t__ PF_INET ; 
 int PF_PACKET ; 
 int PF_RDS ; 
 int /*<<< orphan*/  POLLOUT ; 
 int SOCK_RAW ; 
 int bytes ; 
 scalar_t__ cfg_cork ; 
 struct sockaddr_ll cfg_dst_addr ; 
 scalar_t__ cfg_family ; 
 int /*<<< orphan*/  cfg_ifindex ; 
 int cfg_payload_len ; 
 scalar_t__ cfg_runtime_ms ; 
 scalar_t__ cfg_zerocopy ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  completions ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msghdr*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct msghdr*) ; 
 int FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_ll*,int,int) ; 
 int /*<<< orphan*/  packets ; 
 struct ethhdr* payload ; 
 int FUNC12 (struct ipv6hdr*,int) ; 
 int FUNC13 (struct iphdr*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int zerocopied ; 

__attribute__((used)) static void FUNC14(int domain, int type, int protocol)
{
	struct iovec iov[3] = { {0} };
	struct sockaddr_ll laddr;
	struct msghdr msg = {0};
	struct ethhdr eth;
	union {
		struct ipv6hdr ip6h;
		struct iphdr iph;
	} nh;
	uint64_t tstop;
	int fd;

	fd = FUNC6(domain, type, protocol);

	if (domain == PF_PACKET) {
		uint16_t proto = cfg_family == PF_INET ? ETH_P_IP : ETH_P_IPV6;

		/* sock_raw passes ll header as data */
		if (type == SOCK_RAW) {
			FUNC11(eth.h_dest, 0x06, ETH_ALEN);
			FUNC11(eth.h_source, 0x02, ETH_ALEN);
			eth.h_proto = FUNC10(proto);
			iov[0].iov_base = &eth;
			iov[0].iov_len = sizeof(eth);
			msg.msg_iovlen++;
		}

		/* both sock_raw and sock_dgram expect name */
		FUNC11(&laddr, 0, sizeof(laddr));
		laddr.sll_family	= AF_PACKET;
		laddr.sll_ifindex	= cfg_ifindex;
		laddr.sll_protocol	= FUNC10(proto);
		laddr.sll_halen		= ETH_ALEN;

		FUNC11(laddr.sll_addr, 0x06, ETH_ALEN);

		msg.msg_name		= &laddr;
		msg.msg_namelen		= sizeof(laddr);
	}

	/* packet and raw sockets with hdrincl must pass network header */
	if (domain == PF_PACKET || protocol == IPPROTO_RAW) {
		if (cfg_family == PF_INET)
			iov[1].iov_len = FUNC13(&nh.iph, cfg_payload_len);
		else
			iov[1].iov_len = FUNC12(&nh.ip6h, cfg_payload_len);

		iov[1].iov_base = (void *) &nh;
		msg.msg_iovlen++;
	}

	if (domain == PF_RDS) {
		msg.msg_name = &cfg_dst_addr;
		msg.msg_namelen =  (cfg_dst_addr.ss_family == AF_INET ?
				    sizeof(struct sockaddr_in) :
				    sizeof(struct sockaddr_in6));
	}

	iov[2].iov_base = payload;
	iov[2].iov_len = cfg_payload_len;
	msg.msg_iovlen++;
	msg.msg_iov = &iov[3 - msg.msg_iovlen];

	tstop = FUNC9() + cfg_runtime_ms;
	do {
		if (cfg_cork)
			FUNC5(fd, &msg);
		else
			FUNC4(fd, &msg, cfg_zerocopy, domain);

		while (!FUNC1(fd, POLLOUT)) {
			if (cfg_zerocopy)
				FUNC2(fd, domain);
		}

	} while (FUNC9() < tstop);

	if (cfg_zerocopy)
		FUNC3(fd, domain);

	if (FUNC0(fd))
		FUNC7(1, errno, "close");

	FUNC8(stderr, "tx=%d (%d MB) txc=%d zc=%c\n",
		packets, bytes >> 20, completions,
		zerocopied == 1 ? 'y' : 'n');
}