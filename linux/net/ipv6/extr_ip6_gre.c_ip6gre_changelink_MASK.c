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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip6gre_net {int dummy; } ;
struct ip6_tnl {int /*<<< orphan*/  net; } ;
struct __ip6_tnl_parm {int dummy; } ;

/* Variables and functions */
 size_t IFLA_MTU ; 
 scalar_t__ FUNC0 (struct ip6_tnl*) ; 
 int FUNC1 (struct ip6_tnl*) ; 
 struct ip6_tnl* FUNC2 (struct net_device*,struct nlattr**,struct nlattr**,struct __ip6_tnl_parm*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  ip6gre_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_tnl*,struct __ip6_tnl_parm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip6gre_net*,struct ip6_tnl*) ; 
 struct ip6gre_net* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct nlattr *tb[],
			     struct nlattr *data[],
			     struct netlink_ext_ack *extack)
{
	struct ip6_tnl *t = FUNC9(dev);
	struct ip6gre_net *ign = FUNC8(t->net, ip6gre_net_id);
	struct __ip6_tnl_parm p;

	t = FUNC2(dev, tb, data, &p, extack);
	if (FUNC0(t))
		return FUNC1(t);

	FUNC7(ign, t);
	FUNC6(ign, t);
	FUNC3(t, &p, !tb[IFLA_MTU]);
	FUNC5(ign, t);
	FUNC4(ign, t);
	return 0;
}