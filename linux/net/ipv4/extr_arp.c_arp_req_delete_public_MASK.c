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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct arpreq {int /*<<< orphan*/  arp_netmask; int /*<<< orphan*/  arp_pa; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct net*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arp_tbl ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct net*,scalar_t__*,struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct arpreq *r,
		struct net_device *dev)
{
	__be32 ip = ((struct sockaddr_in *) &r->arp_pa)->sin_addr.s_addr;
	__be32 mask = ((struct sockaddr_in *)&r->arp_netmask)->sin_addr.s_addr;

	if (mask == FUNC1(0xFFFFFFFF))
		return FUNC2(&arp_tbl, net, &ip, dev);

	if (mask)
		return -EINVAL;

	return FUNC0(net, dev, 0);
}