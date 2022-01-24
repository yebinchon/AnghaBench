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
struct net_device {scalar_t__ type; } ;
struct net {int dummy; } ;
struct ip_tunnel_encap {int dummy; } ;
struct ip6_tnl {int /*<<< orphan*/  net; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ip6_tnl*,struct ip_tunnel_encap*) ; 
 scalar_t__ FUNC5 (struct nlattr**,struct ip_tunnel_encap*) ; 
 struct ip6_tnl* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net *src_net, struct net_device *dev,
				 struct nlattr *tb[], struct nlattr *data[],
				 struct netlink_ext_ack *extack)
{
	struct ip6_tnl *nt;
	struct ip_tunnel_encap ipencap;
	int err;

	nt = FUNC6(dev);

	if (FUNC5(data, &ipencap)) {
		int err = FUNC4(nt, &ipencap);

		if (err < 0)
			return err;
	}

	if (dev->type == ARPHRD_ETHER && !tb[IFLA_ADDRESS])
		FUNC2(dev);

	nt->dev = dev;
	nt->net = FUNC1(dev);

	err = FUNC8(dev);
	if (err)
		goto out;

	if (tb[IFLA_MTU])
		FUNC3(dev, FUNC7(tb[IFLA_MTU]));

	FUNC0(dev);

out:
	return err;
}