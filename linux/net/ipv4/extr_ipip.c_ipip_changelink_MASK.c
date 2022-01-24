#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel_encap {int dummy; } ;
struct ip_tunnel {int /*<<< orphan*/  fwmark; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_POINTOPOINT ; 
 int FUNC0 (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip_tunnel*,struct ip_tunnel_encap*) ; 
 scalar_t__ FUNC2 (struct nlattr**,struct ip_tunnel_encap*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,struct ip_tunnel_parm*,int*,int /*<<< orphan*/ *) ; 
 struct ip_tunnel* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct nlattr *tb[],
			   struct nlattr *data[],
			   struct netlink_ext_ack *extack)
{
	struct ip_tunnel *t = FUNC4(dev);
	struct ip_tunnel_parm p;
	struct ip_tunnel_encap ipencap;
	bool collect_md;
	__u32 fwmark = t->fwmark;

	if (FUNC2(data, &ipencap)) {
		int err = FUNC1(t, &ipencap);

		if (err < 0)
			return err;
	}

	FUNC3(data, &p, &collect_md, &fwmark);
	if (collect_md)
		return -EINVAL;

	if (((dev->flags & IFF_POINTOPOINT) && !p.iph.daddr) ||
	    (!(dev->flags & IFF_POINTOPOINT) && p.iph.daddr))
		return -EINVAL;

	return FUNC0(dev, tb, &p, fwmark);
}