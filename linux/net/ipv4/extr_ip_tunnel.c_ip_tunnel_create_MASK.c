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
struct net_device {scalar_t__ hard_header_len; scalar_t__ max_mtu; int /*<<< orphan*/  min_mtu; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_net {int /*<<< orphan*/  rtnl_link_ops; } ;
struct ip_tunnel {int hlen; } ;

/* Variables and functions */
 struct ip_tunnel* FUNC0 (struct net_device*) ; 
 struct ip_tunnel* FUNC1 (int) ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 scalar_t__ IP_MAX_MTU ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct net*,int /*<<< orphan*/ ,struct ip_tunnel_parm*) ; 
 int FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int FUNC6 (struct net_device*) ; 
 struct ip_tunnel* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static struct ip_tunnel *FUNC9(struct net *net,
					  struct ip_tunnel_net *itn,
					  struct ip_tunnel_parm *parms)
{
	struct ip_tunnel *nt;
	struct net_device *dev;
	int t_hlen;
	int mtu;
	int err;

	dev = FUNC3(net, itn->rtnl_link_ops, parms);
	if (FUNC2(dev))
		return FUNC0(dev);

	mtu = FUNC6(dev);
	err = FUNC4(dev, mtu);
	if (err)
		goto err_dev_set_mtu;

	nt = FUNC7(dev);
	t_hlen = nt->hlen + sizeof(struct iphdr);
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = IP_MAX_MTU - dev->hard_header_len - t_hlen;
	FUNC5(itn, nt);
	return nt;

err_dev_set_mtu:
	FUNC8(dev);
	return FUNC1(err);
}