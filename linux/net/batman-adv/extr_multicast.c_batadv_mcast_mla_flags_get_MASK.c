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
struct net_device {int dummy; } ;
struct batadv_priv {struct net_device* soft_iface; } ;
struct batadv_mcast_querier_state {void* shadowing; void* exists; } ;
struct batadv_mcast_mla_flags {int enabled; int bridged; int /*<<< orphan*/  tvlv_flags; struct batadv_mcast_querier_state querier_ipv6; struct batadv_mcast_querier_state querier_ipv4; } ;
typedef  int /*<<< orphan*/  mla_flags ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_MCAST_WANT_ALL_IPV4 ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_ALL_IPV6 ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_ALL_UNSNOOPABLES ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR4 ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR6 ; 
 int /*<<< orphan*/  CONFIG_BRIDGE_IGMP_SNOOPING ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct net_device*) ; 
 void* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_mcast_mla_flags*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static struct batadv_mcast_mla_flags
FUNC8(struct batadv_priv *bat_priv)
{
	struct net_device *dev = bat_priv->soft_iface;
	struct batadv_mcast_querier_state *qr4, *qr6;
	struct batadv_mcast_mla_flags mla_flags;
	struct net_device *bridge;

	bridge = FUNC1(dev);

	FUNC6(&mla_flags, 0, sizeof(mla_flags));
	mla_flags.enabled = 1;
	mla_flags.tvlv_flags |= FUNC2(bat_priv,
							       bridge);

	if (!bridge)
		return mla_flags;

	FUNC5(bridge);

	mla_flags.bridged = 1;
	qr4 = &mla_flags.querier_ipv4;
	qr6 = &mla_flags.querier_ipv6;

	if (!FUNC0(CONFIG_BRIDGE_IGMP_SNOOPING))
		FUNC7("No bridge IGMP snooping compiled - multicast optimizations disabled\n");

	qr4->exists = FUNC4(dev, ETH_P_IP);
	qr4->shadowing = FUNC3(dev, ETH_P_IP);

	qr6->exists = FUNC4(dev, ETH_P_IPV6);
	qr6->shadowing = FUNC3(dev, ETH_P_IPV6);

	mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_UNSNOOPABLES;

	/* 1) If no querier exists at all, then multicast listeners on
	 *    our local TT clients behind the bridge will keep silent.
	 * 2) If the selected querier is on one of our local TT clients,
	 *    behind the bridge, then this querier might shadow multicast
	 *    listeners on our local TT clients, behind this bridge.
	 *
	 * In both cases, we will signalize other batman nodes that
	 * we need all multicast traffic of the according protocol.
	 */
	if (!qr4->exists || qr4->shadowing) {
		mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV4;
		mla_flags.tvlv_flags &= ~BATADV_MCAST_WANT_NO_RTR4;
	}

	if (!qr6->exists || qr6->shadowing) {
		mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV6;
		mla_flags.tvlv_flags &= ~BATADV_MCAST_WANT_NO_RTR6;
	}

	return mla_flags;
}