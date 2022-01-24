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
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct arpreq {int arp_flags; int /*<<< orphan*/  arp_pa; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ATF_PUBL ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  RTO_ONLINK ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct arpreq*,struct net_device*) ; 
 struct rtable* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 

__attribute__((used)) static int FUNC6(struct net *net, struct arpreq *r,
			  struct net_device *dev)
{
	__be32 ip;

	if (r->arp_flags & ATF_PUBL)
		return FUNC3(net, r, dev);

	ip = ((struct sockaddr_in *)&r->arp_pa)->sin_addr.s_addr;
	if (!dev) {
		struct rtable *rt = FUNC4(net, ip, 0, RTO_ONLINK, 0);
		if (FUNC0(rt))
			return FUNC1(rt);
		dev = rt->dst.dev;
		FUNC5(rt);
		if (!dev)
			return -EINVAL;
	}
	return FUNC2(dev, ip);
}