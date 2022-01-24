#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  type; } ;
struct net {int dummy; } ;
struct ip6gre_net {int /*<<< orphan*/  collect_md_tun; } ;
struct TYPE_3__ {scalar_t__ collect_md; } ;
struct ip6_tnl {TYPE_1__ parms; } ;

/* Variables and functions */
 int EEXIST ; 
 size_t IFLA_MTU ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  ip6gre_net_id ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,TYPE_1__*) ; 
 int FUNC2 (struct net*,struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_tnl*,int) ; 
 scalar_t__ FUNC4 (struct net*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip6gre_net*,struct ip6_tnl*) ; 
 struct ip6gre_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net *src_net, struct net_device *dev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	struct ip6_tnl *nt = FUNC8(dev);
	struct net *net = FUNC0(dev);
	struct ip6gre_net *ign;
	int err;

	FUNC1(data, &nt->parms);
	ign = FUNC7(net, ip6gre_net_id);

	if (nt->parms.collect_md) {
		if (FUNC9(ign->collect_md_tun))
			return -EEXIST;
	} else {
		if (FUNC4(net, &nt->parms, dev->type))
			return -EEXIST;
	}

	err = FUNC2(src_net, dev, tb, data, extack);
	if (!err) {
		FUNC3(nt, !tb[IFLA_MTU]);
		FUNC6(ign, nt);
		FUNC5(FUNC7(net, ip6gre_net_id), nt);
	}
	return err;
}