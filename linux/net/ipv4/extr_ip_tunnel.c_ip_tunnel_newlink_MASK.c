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
struct net_device {scalar_t__ type; unsigned int hard_header_len; int /*<<< orphan*/  mtu; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_net {int /*<<< orphan*/  collect_md_tun; } ;
struct ip_tunnel {unsigned int hlen; int /*<<< orphan*/  fwmark; struct ip_tunnel_parm parms; struct net* net; scalar_t__ collect_md; int /*<<< orphan*/  ip_tnl_net_id; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EEXIST ; 
 scalar_t__ ETH_MIN_MTU ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_MTU ; 
 unsigned int IP_MAX_MTU ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct net* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct ip_tunnel_net*,struct ip_tunnel_parm*,scalar_t__) ; 
 struct ip_tunnel_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

int FUNC12(struct net_device *dev, struct nlattr *tb[],
		      struct ip_tunnel_parm *p, __u32 fwmark)
{
	struct ip_tunnel *nt;
	struct net *net = FUNC1(dev);
	struct ip_tunnel_net *itn;
	int mtu;
	int err;

	nt = FUNC8(dev);
	itn = FUNC7(net, nt->ip_tnl_net_id);

	if (nt->collect_md) {
		if (FUNC10(itn->collect_md_tun))
			return -EEXIST;
	} else {
		if (FUNC6(itn, p, dev->type))
			return -EEXIST;
	}

	nt->net = net;
	nt->parms = *p;
	nt->fwmark = fwmark;
	err = FUNC9(dev);
	if (err)
		goto err_register_netdevice;

	if (dev->type == ARPHRD_ETHER && !tb[IFLA_ADDRESS])
		FUNC3(dev);

	mtu = FUNC5(dev);
	if (tb[IFLA_MTU]) {
		unsigned int max = IP_MAX_MTU - dev->hard_header_len - nt->hlen;

		mtu = FUNC0(dev->mtu, (unsigned int)ETH_MIN_MTU,
			    (unsigned int)(max - sizeof(struct iphdr)));
	}

	err = FUNC2(dev, mtu);
	if (err)
		goto err_dev_set_mtu;

	FUNC4(itn, nt);
	return 0;

err_dev_set_mtu:
	FUNC11(dev);
err_register_netdevice:
	return err;
}