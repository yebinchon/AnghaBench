#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; TYPE_1__* header_ops; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct neighbour {int nud_state; TYPE_2__* ops; int /*<<< orphan*/  output; int /*<<< orphan*/  ha; int /*<<< orphan*/  type; int /*<<< orphan*/  parms; struct net_device* dev; int /*<<< orphan*/  primary_key; } ;
struct neigh_parms {int dummy; } ;
struct inet6_dev {struct neigh_parms* nd_parms; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  output; int /*<<< orphan*/  connected_output; } ;
struct TYPE_5__ {scalar_t__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 void* NUD_NOARP ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  RTN_LOCAL ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 int /*<<< orphan*/  RTN_UNICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ ndisc_direct_ops ; 
 TYPE_2__ ndisc_generic_ops ; 
 TYPE_2__ ndisc_hh_ops ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  neigh_direct_output ; 
 int /*<<< orphan*/  FUNC6 (struct neigh_parms*) ; 

__attribute__((used)) static int FUNC7(struct neighbour *neigh)
{
	struct in6_addr *addr = (struct in6_addr *)&neigh->primary_key;
	struct net_device *dev = neigh->dev;
	struct inet6_dev *in6_dev;
	struct neigh_parms *parms;
	bool is_multicast = FUNC3(addr);

	in6_dev = FUNC1(dev);
	if (!in6_dev) {
		return -EINVAL;
	}

	parms = in6_dev->nd_parms;
	FUNC0(neigh->parms);
	neigh->parms = FUNC6(parms);

	neigh->type = is_multicast ? RTN_MULTICAST : RTN_UNICAST;
	if (!dev->header_ops) {
		neigh->nud_state = NUD_NOARP;
		neigh->ops = &ndisc_direct_ops;
		neigh->output = neigh_direct_output;
	} else {
		if (is_multicast) {
			neigh->nud_state = NUD_NOARP;
			FUNC5(addr, neigh->ha, dev, 1);
		} else if (dev->flags&(IFF_NOARP|IFF_LOOPBACK)) {
			neigh->nud_state = NUD_NOARP;
			FUNC4(neigh->ha, dev->dev_addr, dev->addr_len);
			if (dev->flags&IFF_LOOPBACK)
				neigh->type = RTN_LOCAL;
		} else if (dev->flags&IFF_POINTOPOINT) {
			neigh->nud_state = NUD_NOARP;
			FUNC4(neigh->ha, dev->broadcast, dev->addr_len);
		}
		if (dev->header_ops->cache)
			neigh->ops = &ndisc_hh_ops;
		else
			neigh->ops = &ndisc_generic_ops;
		if (neigh->nud_state&NUD_VALID)
			neigh->output = neigh->ops->connected_output;
		else
			neigh->output = neigh->ops->output;
	}
	FUNC2(in6_dev);
	return 0;
}