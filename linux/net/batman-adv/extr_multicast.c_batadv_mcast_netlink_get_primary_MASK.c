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
struct netlink_callback {int /*<<< orphan*/  nlh; TYPE_1__* skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {scalar_t__ if_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct batadv_priv* FUNC6 (struct net_device*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct netlink_callback *cb,
				 struct batadv_hard_iface **primary_if)
{
	struct batadv_hard_iface *hard_iface = NULL;
	struct net *net = FUNC7(cb->skb->sk);
	struct net_device *soft_iface;
	struct batadv_priv *bat_priv;
	int ifindex;
	int ret = 0;

	ifindex = FUNC1(cb->nlh, BATADV_ATTR_MESH_IFINDEX);
	if (!ifindex)
		return -EINVAL;

	soft_iface = FUNC4(net, ifindex);
	if (!soft_iface || !FUNC3(soft_iface)) {
		ret = -ENODEV;
		goto out;
	}

	bat_priv = FUNC6(soft_iface);

	hard_iface = FUNC2(bat_priv);
	if (!hard_iface || hard_iface->if_status != BATADV_IF_ACTIVE) {
		ret = -ENOENT;
		goto out;
	}

out:
	if (soft_iface)
		FUNC5(soft_iface);

	if (!ret && primary_if)
		*primary_if = hard_iface;
	else if (hard_iface)
		FUNC0(hard_iface);

	return ret;
}