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
struct TYPE_3__ {int /*<<< orphan*/  nhc_scope; } ;
struct nh_info {int family; int reject_nh; int /*<<< orphan*/  nh_info; TYPE_1__ fib_nhc; struct nh_info* nh_parent; struct net* net; int /*<<< orphan*/  nh_flags; } ;
struct nh_config {int nh_family; int /*<<< orphan*/  nh_ifindex; scalar_t__ nh_blackhole; int /*<<< orphan*/  nh_flags; } ;
struct nexthop {int family; int reject_nh; int /*<<< orphan*/  nh_info; TYPE_1__ fib_nhc; struct nexthop* nh_parent; struct net* net; int /*<<< orphan*/  nh_flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {TYPE_2__* loopback_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int ENOMEM ; 
 struct nh_info* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct nh_info*) ; 
 struct nh_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct nh_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct nh_info*) ; 
 int FUNC5 (struct net*,struct nh_info*,struct nh_info*,struct nh_config*,struct netlink_ext_ack*) ; 
 int FUNC6 (struct net*,struct nh_info*,struct nh_info*,struct nh_config*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nh_info*) ; 

__attribute__((used)) static struct nexthop *FUNC8(struct net *net, struct nh_config *cfg,
				      struct netlink_ext_ack *extack)
{
	struct nh_info *nhi;
	struct nexthop *nh;
	int err = 0;

	nh = FUNC3();
	if (!nh)
		return FUNC0(-ENOMEM);

	nhi = FUNC2(sizeof(*nhi), GFP_KERNEL);
	if (!nhi) {
		FUNC1(nh);
		return FUNC0(-ENOMEM);
	}

	nh->nh_flags = cfg->nh_flags;
	nh->net = net;

	nhi->nh_parent = nh;
	nhi->family = cfg->nh_family;
	nhi->fib_nhc.nhc_scope = RT_SCOPE_LINK;

	if (cfg->nh_blackhole) {
		nhi->reject_nh = 1;
		cfg->nh_ifindex = net->loopback_dev->ifindex;
	}

	switch (cfg->nh_family) {
	case AF_INET:
		err = FUNC5(net, nh, nhi, cfg, extack);
		break;
	case AF_INET6:
		err = FUNC6(net, nh, nhi, cfg, extack);
		break;
	}

	if (err) {
		FUNC1(nhi);
		FUNC1(nh);
		return FUNC0(err);
	}

	/* add the entry to the device based hash */
	FUNC4(net, nhi);

	FUNC7(nh->nh_info, nhi);

	return nh;
}