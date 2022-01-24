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
struct ip6_tnl {int dummy; } ;
struct __ip6_tnl_parm {int dummy; } ;

/* Variables and functions */
 size_t IFLA_MTU ; 
 scalar_t__ FUNC0 (struct ip6_tnl*) ; 
 int FUNC1 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,struct __ip6_tnl_parm*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip6_tnl*,struct __ip6_tnl_parm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6gre_net*,struct ip6_tnl*) ; 
 struct ip6_tnl* FUNC6 (struct net_device*,struct nlattr**,struct nlattr**,struct __ip6_tnl_parm*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  ip6gre_net_id ; 
 int /*<<< orphan*/  FUNC7 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip6gre_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC9 (struct ip6gre_net*,struct ip6_tnl*) ; 
 struct ip6gre_net* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct nlattr *tb[],
				struct nlattr *data[],
				struct netlink_ext_ack *extack)
{
	struct ip6gre_net *ign = FUNC10(FUNC2(dev), ip6gre_net_id);
	struct __ip6_tnl_parm p;
	struct ip6_tnl *t;

	t = FUNC6(dev, tb, data, &p, extack);
	if (FUNC0(t))
		return FUNC1(t);

	FUNC3(data, &p);
	FUNC9(ign, t);
	FUNC8(ign, t);
	FUNC4(t, &p, !tb[IFLA_MTU]);
	FUNC5(ign, t);
	FUNC7(ign, t);
	return 0;
}