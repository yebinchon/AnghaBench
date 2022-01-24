#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  type; } ;
struct net {int dummy; } ;
struct ip6gre_net {int /*<<< orphan*/  collect_md_tun_erspan; } ;
struct TYPE_4__ {scalar_t__ collect_md; } ;
struct ip6_tnl {TYPE_1__ parms; } ;

/* Variables and functions */
 int EEXIST ; 
 size_t IFLA_MTU ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  ip6gre_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr**,TYPE_1__*) ; 
 int FUNC5 (struct net*,struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC6 (struct net*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ip6gre_net*,struct ip6_tnl*) ; 
 struct ip6gre_net* FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net *src_net, struct net_device *dev,
			     struct nlattr *tb[], struct nlattr *data[],
			     struct netlink_ext_ack *extack)
{
	struct ip6_tnl *nt = FUNC9(dev);
	struct net *net = FUNC0(dev);
	struct ip6gre_net *ign;
	int err;

	FUNC4(data, &nt->parms);
	FUNC1(data, &nt->parms);
	ign = FUNC8(net, ip6gre_net_id);

	if (nt->parms.collect_md) {
		if (FUNC10(ign->collect_md_tun_erspan))
			return -EEXIST;
	} else {
		if (FUNC6(net, &nt->parms, dev->type))
			return -EEXIST;
	}

	err = FUNC5(src_net, dev, tb, data, extack);
	if (!err) {
		FUNC2(nt, !tb[IFLA_MTU]);
		FUNC3(ign, nt);
		FUNC7(FUNC8(net, ip6gre_net_id), nt);
	}
	return err;
}