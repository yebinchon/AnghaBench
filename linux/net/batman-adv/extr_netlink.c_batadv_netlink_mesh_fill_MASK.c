#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int /*<<< orphan*/  sel_class; int /*<<< orphan*/  mode; int /*<<< orphan*/  bandwidth_up; int /*<<< orphan*/  bandwidth_down; } ;
struct TYPE_8__ {int /*<<< orphan*/  group; } ;
struct TYPE_9__ {TYPE_2__ claim_dest; } ;
struct TYPE_7__ {int /*<<< orphan*/  vn; } ;
struct batadv_priv {int isolation_mark; int isolation_mark_mask; int /*<<< orphan*/  orig_interval; int /*<<< orphan*/  network_coding; int /*<<< orphan*/  multicast_fanout; int /*<<< orphan*/  multicast_mode; int /*<<< orphan*/  log_level; int /*<<< orphan*/  hop_penalty; TYPE_6__ gw; TYPE_5__* algo_ops; int /*<<< orphan*/  fragmentation; int /*<<< orphan*/  distributed_arp_table; int /*<<< orphan*/  bridge_loop_avoidance; int /*<<< orphan*/  bonding; int /*<<< orphan*/  aggregated_ogms; TYPE_3__ bla; TYPE_1__ tt; struct net_device* soft_iface; } ;
struct batadv_hard_iface {scalar_t__ if_status; struct net_device* net_dev; } ;
typedef  enum batadv_nl_commands { ____Placeholder_batadv_nl_commands } batadv_nl_commands ;
struct TYPE_10__ {scalar_t__ is_eligible; scalar_t__ get_best_gw_node; } ;
struct TYPE_11__ {TYPE_4__ gw; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_AGGREGATED_OGMS_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_ALGO_NAME ; 
 int /*<<< orphan*/  BATADV_ATTR_BLA_CRC ; 
 int /*<<< orphan*/  BATADV_ATTR_BONDING_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_FRAGMENTATION_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_GW_BANDWIDTH_DOWN ; 
 int /*<<< orphan*/  BATADV_ATTR_GW_BANDWIDTH_UP ; 
 int /*<<< orphan*/  BATADV_ATTR_GW_MODE ; 
 int /*<<< orphan*/  BATADV_ATTR_GW_SEL_CLASS ; 
 int /*<<< orphan*/  BATADV_ATTR_HARD_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_HARD_IFINDEX ; 
 int /*<<< orphan*/  BATADV_ATTR_HARD_IFNAME ; 
 int /*<<< orphan*/  BATADV_ATTR_HOP_PENALTY ; 
 int /*<<< orphan*/  BATADV_ATTR_ISOLATION_MARK ; 
 int /*<<< orphan*/  BATADV_ATTR_ISOLATION_MASK ; 
 int /*<<< orphan*/  BATADV_ATTR_LOG_LEVEL ; 
 int /*<<< orphan*/  BATADV_ATTR_MESH_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFNAME ; 
 int /*<<< orphan*/  BATADV_ATTR_MULTICAST_FANOUT ; 
 int /*<<< orphan*/  BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_NETWORK_CODING_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_ORIG_INTERVAL ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_TTVN ; 
 int /*<<< orphan*/  BATADV_ATTR_VERSION ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 int /*<<< orphan*/  BATADV_SOURCE_VERSION ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct batadv_priv*) ; 
 struct batadv_hard_iface* FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void*) ; 
 void* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *msg,
				    struct batadv_priv *bat_priv,
				    enum batadv_nl_commands cmd,
				    u32 portid, u32 seq, int flags)
{
	struct net_device *soft_iface = bat_priv->soft_iface;
	struct batadv_hard_iface *primary_if = NULL;
	struct net_device *hard_iface;
	void *hdr;

	hdr = FUNC7(msg, portid, seq, &batadv_netlink_family, flags, cmd);
	if (!hdr)
		return -ENOBUFS;

	if (FUNC9(msg, BATADV_ATTR_VERSION, BATADV_SOURCE_VERSION) ||
	    FUNC9(msg, BATADV_ATTR_ALGO_NAME,
			   bat_priv->algo_ops->name) ||
	    FUNC11(msg, BATADV_ATTR_MESH_IFINDEX, soft_iface->ifindex) ||
	    FUNC9(msg, BATADV_ATTR_MESH_IFNAME, soft_iface->name) ||
	    FUNC8(msg, BATADV_ATTR_MESH_ADDRESS, ETH_ALEN,
		    soft_iface->dev_addr) ||
	    FUNC12(msg, BATADV_ATTR_TT_TTVN,
		       (u8)FUNC0(&bat_priv->tt.vn)))
		goto nla_put_failure;

#ifdef CONFIG_BATMAN_ADV_BLA
	if (nla_put_u16(msg, BATADV_ATTR_BLA_CRC,
			ntohs(bat_priv->bla.claim_dest.group)))
		goto nla_put_failure;
#endif

	if (FUNC2(msg, bat_priv))
		goto nla_put_failure;

	primary_if = FUNC4(bat_priv);
	if (primary_if && primary_if->if_status == BATADV_IF_ACTIVE) {
		hard_iface = primary_if->net_dev;

		if (FUNC11(msg, BATADV_ATTR_HARD_IFINDEX,
				hard_iface->ifindex) ||
		    FUNC9(msg, BATADV_ATTR_HARD_IFNAME,
				   hard_iface->name) ||
		    FUNC8(msg, BATADV_ATTR_HARD_ADDRESS, ETH_ALEN,
			    hard_iface->dev_addr))
			goto nla_put_failure;
	}

	if (FUNC12(msg, BATADV_ATTR_AGGREGATED_OGMS_ENABLED,
		       !!FUNC0(&bat_priv->aggregated_ogms)))
		goto nla_put_failure;

	if (FUNC3(msg, bat_priv))
		goto nla_put_failure;

	if (FUNC11(msg, BATADV_ATTR_ISOLATION_MARK,
			bat_priv->isolation_mark))
		goto nla_put_failure;

	if (FUNC11(msg, BATADV_ATTR_ISOLATION_MASK,
			bat_priv->isolation_mark_mask))
		goto nla_put_failure;

	if (FUNC12(msg, BATADV_ATTR_BONDING_ENABLED,
		       !!FUNC0(&bat_priv->bonding)))
		goto nla_put_failure;

#ifdef CONFIG_BATMAN_ADV_BLA
	if (nla_put_u8(msg, BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED,
		       !!atomic_read(&bat_priv->bridge_loop_avoidance)))
		goto nla_put_failure;
#endif /* CONFIG_BATMAN_ADV_BLA */

#ifdef CONFIG_BATMAN_ADV_DAT
	if (nla_put_u8(msg, BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED,
		       !!atomic_read(&bat_priv->distributed_arp_table)))
		goto nla_put_failure;
#endif /* CONFIG_BATMAN_ADV_DAT */

	if (FUNC12(msg, BATADV_ATTR_FRAGMENTATION_ENABLED,
		       !!FUNC0(&bat_priv->fragmentation)))
		goto nla_put_failure;

	if (FUNC11(msg, BATADV_ATTR_GW_BANDWIDTH_DOWN,
			FUNC0(&bat_priv->gw.bandwidth_down)))
		goto nla_put_failure;

	if (FUNC11(msg, BATADV_ATTR_GW_BANDWIDTH_UP,
			FUNC0(&bat_priv->gw.bandwidth_up)))
		goto nla_put_failure;

	if (FUNC12(msg, BATADV_ATTR_GW_MODE,
		       FUNC0(&bat_priv->gw.mode)))
		goto nla_put_failure;

	if (bat_priv->algo_ops->gw.get_best_gw_node &&
	    bat_priv->algo_ops->gw.is_eligible) {
		/* GW selection class is not available if the routing algorithm
		 * in use does not implement the GW API
		 */
		if (FUNC11(msg, BATADV_ATTR_GW_SEL_CLASS,
				FUNC0(&bat_priv->gw.sel_class)))
			goto nla_put_failure;
	}

	if (FUNC12(msg, BATADV_ATTR_HOP_PENALTY,
		       FUNC0(&bat_priv->hop_penalty)))
		goto nla_put_failure;

#ifdef CONFIG_BATMAN_ADV_DEBUG
	if (nla_put_u32(msg, BATADV_ATTR_LOG_LEVEL,
			atomic_read(&bat_priv->log_level)))
		goto nla_put_failure;
#endif /* CONFIG_BATMAN_ADV_DEBUG */

#ifdef CONFIG_BATMAN_ADV_MCAST
	if (nla_put_u8(msg, BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED,
		       !atomic_read(&bat_priv->multicast_mode)))
		goto nla_put_failure;

	if (nla_put_u32(msg, BATADV_ATTR_MULTICAST_FANOUT,
			atomic_read(&bat_priv->multicast_fanout)))
		goto nla_put_failure;
#endif /* CONFIG_BATMAN_ADV_MCAST */

#ifdef CONFIG_BATMAN_ADV_NC
	if (nla_put_u8(msg, BATADV_ATTR_NETWORK_CODING_ENABLED,
		       !!atomic_read(&bat_priv->network_coding)))
		goto nla_put_failure;
#endif /* CONFIG_BATMAN_ADV_NC */

	if (FUNC11(msg, BATADV_ATTR_ORIG_INTERVAL,
			FUNC0(&bat_priv->orig_interval)))
		goto nla_put_failure;

	if (primary_if)
		FUNC1(primary_if);

	FUNC6(msg, hdr);
	return 0;

nla_put_failure:
	if (primary_if)
		FUNC1(primary_if);

	FUNC5(msg, hdr);
	return -EMSGSIZE;
}