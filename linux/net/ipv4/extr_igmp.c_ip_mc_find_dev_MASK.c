#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct net_device* dev; } ;
struct rtable {TYPE_3__ dst; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int /*<<< orphan*/  imr_ifindex; TYPE_2__ imr_multiaddr; TYPE_1__ imr_address; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__,int) ; 
 struct in_device* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 

__attribute__((used)) static struct in_device *FUNC6(struct net *net, struct ip_mreqn *imr)
{
	struct net_device *dev = NULL;
	struct in_device *idev = NULL;

	if (imr->imr_ifindex) {
		idev = FUNC3(net, imr->imr_ifindex);
		return idev;
	}
	if (imr->imr_address.s_addr) {
		dev = FUNC2(net, imr->imr_address.s_addr, false);
		if (!dev)
			return NULL;
	}

	if (!dev) {
		struct rtable *rt = FUNC4(net,
						    imr->imr_multiaddr.s_addr,
						    0, 0, 0);
		if (!FUNC0(rt)) {
			dev = rt->dst.dev;
			FUNC5(rt);
		}
	}
	if (dev) {
		imr->imr_ifindex = dev->ifindex;
		idev = FUNC1(dev);
	}
	return idev;
}