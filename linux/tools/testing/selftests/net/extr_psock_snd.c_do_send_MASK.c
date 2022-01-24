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
struct virtio_net_hdr {int dummy; } ;
struct sockaddr_ll {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  laddr ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  cfg_ifname ; 
 scalar_t__ cfg_use_bind ; 
 scalar_t__ cfg_use_dgram ; 
 int /*<<< orphan*/  cfg_use_vnet ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(int fd, char *buf, int len)
{
	int ret;

	if (!cfg_use_vnet) {
		buf += sizeof(struct virtio_net_hdr);
		len -= sizeof(struct virtio_net_hdr);
	}
	if (cfg_use_dgram) {
		buf += ETH_HLEN;
		len -= ETH_HLEN;
	}

	if (cfg_use_bind) {
		ret = FUNC5(fd, buf, len);
	} else {
		struct sockaddr_ll laddr = {0};

		laddr.sll_protocol = FUNC2(ETH_P_IP);
		laddr.sll_ifindex = FUNC3(cfg_ifname);
		if (!laddr.sll_ifindex)
			FUNC0(1, errno, "if_nametoindex");

		ret = FUNC4(fd, buf, len, 0, (void *)&laddr, sizeof(laddr));
	}

	if (ret == -1)
		FUNC0(1, errno, "write");
	if (ret != len)
		FUNC0(1, 0, "write: %u %u", ret, len);

	FUNC1(stderr, "tx: %u\n", ret);
}