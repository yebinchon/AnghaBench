#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rtnl_link_ops {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int /*<<< orphan*/  name; } ;
struct ip_tunnel_net {TYPE_1__* fb_tunnel_dev; int /*<<< orphan*/  type; int /*<<< orphan*/ * tunnels; struct rtnl_link_ops* rtnl_link_ops; } ;
typedef  int /*<<< orphan*/  parms ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  mtu; int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IP_TNL_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  NETIF_F_NETNS_LOCAL ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct net*,struct rtnl_link_ops*,struct ip_tunnel_parm*) ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_tunnel_parm*,int /*<<< orphan*/ ,int) ; 
 struct ip_tunnel_net* FUNC7 (struct net*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC13(struct net *net, unsigned int ip_tnl_net_id,
				  struct rtnl_link_ops *ops, char *devname)
{
	struct ip_tunnel_net *itn = FUNC7(net, ip_tnl_net_id);
	struct ip_tunnel_parm parms;
	unsigned int i;

	itn->rtnl_link_ops = ops;
	for (i = 0; i < IP_TNL_HASH_SIZE; i++)
		FUNC0(&itn->tunnels[i]);

	if (!ops || !FUNC8(net)) {
		struct ip_tunnel_net *it_init_net;

		it_init_net = FUNC7(&init_net, ip_tnl_net_id);
		itn->type = it_init_net->type;
		itn->fb_tunnel_dev = NULL;
		return 0;
	}

	FUNC6(&parms, 0, sizeof(parms));
	if (devname)
		FUNC12(parms.name, devname, IFNAMSIZ);

	FUNC10();
	itn->fb_tunnel_dev = FUNC3(net, ops, &parms);
	/* FB netdevice is special: we have one, and only one per netns.
	 * Allowing to move it to another netns is clearly unsafe.
	 */
	if (!FUNC1(itn->fb_tunnel_dev)) {
		itn->fb_tunnel_dev->features |= NETIF_F_NETNS_LOCAL;
		itn->fb_tunnel_dev->mtu = FUNC5(itn->fb_tunnel_dev);
		FUNC4(itn, FUNC9(itn->fb_tunnel_dev));
		itn->type = itn->fb_tunnel_dev->type;
	}
	FUNC11();

	return FUNC2(itn->fb_tunnel_dev);
}