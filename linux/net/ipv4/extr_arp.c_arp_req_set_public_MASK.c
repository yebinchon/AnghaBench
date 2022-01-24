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
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct arpreq {int arp_flags; TYPE_1__ arp_ha; int /*<<< orphan*/  arp_netmask; int /*<<< orphan*/  arp_pa; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int ATF_COM ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int FUNC0 (struct net*,struct net_device*,int) ; 
 int /*<<< orphan*/  arp_tbl ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct net*,scalar_t__*,struct net_device*,int) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct arpreq *r,
		struct net_device *dev)
{
	__be32 ip = ((struct sockaddr_in *)&r->arp_pa)->sin_addr.s_addr;
	__be32 mask = ((struct sockaddr_in *)&r->arp_netmask)->sin_addr.s_addr;

	if (mask && mask != FUNC2(0xFFFFFFFF))
		return -EINVAL;
	if (!dev && (r->arp_flags & ATF_COM)) {
		dev = FUNC1(net, r->arp_ha.sa_family,
				      r->arp_ha.sa_data);
		if (!dev)
			return -ENODEV;
	}
	if (mask) {
		if (!FUNC3(&arp_tbl, net, &ip, dev, 1))
			return -ENOBUFS;
		return 0;
	}

	return FUNC0(net, dev, 1);
}