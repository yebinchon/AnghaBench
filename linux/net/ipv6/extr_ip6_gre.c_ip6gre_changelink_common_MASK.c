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
struct net {int dummy; } ;
struct ip_tunnel_encap {int dummy; } ;
struct ip6gre_net {struct net_device* fb_tunnel_dev; } ;
struct ip6_tnl {struct net_device* dev; struct net* net; } ;
struct __ip6_tnl_parm {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 struct ip6_tnl* FUNC0 (int) ; 
 int FUNC1 (struct ip6_tnl*,struct ip_tunnel_encap*) ; 
 int /*<<< orphan*/  ip6gre_net_id ; 
 scalar_t__ FUNC2 (struct nlattr**,struct ip_tunnel_encap*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,struct __ip6_tnl_parm*) ; 
 struct ip6_tnl* FUNC4 (struct net*,struct __ip6_tnl_parm*,int /*<<< orphan*/ ) ; 
 struct ip6gre_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC6 (struct net_device*) ; 

__attribute__((used)) static struct ip6_tnl *
FUNC7(struct net_device *dev, struct nlattr *tb[],
			 struct nlattr *data[], struct __ip6_tnl_parm *p_p,
			 struct netlink_ext_ack *extack)
{
	struct ip6_tnl *t, *nt = FUNC6(dev);
	struct net *net = nt->net;
	struct ip6gre_net *ign = FUNC5(net, ip6gre_net_id);
	struct ip_tunnel_encap ipencap;

	if (dev == ign->fb_tunnel_dev)
		return FUNC0(-EINVAL);

	if (FUNC2(data, &ipencap)) {
		int err = FUNC1(nt, &ipencap);

		if (err < 0)
			return FUNC0(err);
	}

	FUNC3(data, p_p);

	t = FUNC4(net, p_p, 0);

	if (t) {
		if (t->dev != dev)
			return FUNC0(-EEXIST);
	} else {
		t = nt;
	}

	return t;
}