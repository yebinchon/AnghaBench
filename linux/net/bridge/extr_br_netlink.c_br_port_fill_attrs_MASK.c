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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct net_bridge_port {int flags; int state; int topology_change_ack; int config_pending; int multicast_router; TYPE_1__* dev; int /*<<< orphan*/  backup_port; int /*<<< orphan*/  hold_timer; int /*<<< orphan*/  forward_delay_timer; int /*<<< orphan*/  message_age_timer; int /*<<< orphan*/  group_fwd_mask; int /*<<< orphan*/  port_no; int /*<<< orphan*/  port_id; int /*<<< orphan*/  designated_cost; int /*<<< orphan*/  designated_port; int /*<<< orphan*/  designated_bridge; int /*<<< orphan*/  designated_root; int /*<<< orphan*/  path_cost; int /*<<< orphan*/  priority; } ;
struct ifla_bridge_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int BR_BCAST_FLOOD ; 
 int BR_BPDU_GUARD ; 
 int BR_FLOOD ; 
 int BR_HAIRPIN_MODE ; 
 int BR_ISOLATED ; 
 int BR_LEARNING ; 
 int BR_MCAST_FLOOD ; 
 int BR_MULTICAST_FAST_LEAVE ; 
 int BR_MULTICAST_TO_UNICAST ; 
 int BR_NEIGH_SUPPRESS ; 
 int BR_PROXYARP ; 
 int BR_PROXYARP_WIFI ; 
 int BR_ROOT_BLOCK ; 
 int BR_VLAN_TUNNEL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_BRPORT_BACKUP_PORT ; 
 int /*<<< orphan*/  IFLA_BRPORT_BCAST_FLOOD ; 
 int /*<<< orphan*/  IFLA_BRPORT_BRIDGE_ID ; 
 int /*<<< orphan*/  IFLA_BRPORT_CONFIG_PENDING ; 
 int /*<<< orphan*/  IFLA_BRPORT_COST ; 
 int /*<<< orphan*/  IFLA_BRPORT_DESIGNATED_COST ; 
 int /*<<< orphan*/  IFLA_BRPORT_DESIGNATED_PORT ; 
 int /*<<< orphan*/  IFLA_BRPORT_FAST_LEAVE ; 
 int /*<<< orphan*/  IFLA_BRPORT_FORWARD_DELAY_TIMER ; 
 int /*<<< orphan*/  IFLA_BRPORT_GROUP_FWD_MASK ; 
 int /*<<< orphan*/  IFLA_BRPORT_GUARD ; 
 int /*<<< orphan*/  IFLA_BRPORT_HOLD_TIMER ; 
 int /*<<< orphan*/  IFLA_BRPORT_ID ; 
 int /*<<< orphan*/  IFLA_BRPORT_ISOLATED ; 
 int /*<<< orphan*/  IFLA_BRPORT_LEARNING ; 
 int /*<<< orphan*/  IFLA_BRPORT_MCAST_FLOOD ; 
 int /*<<< orphan*/  IFLA_BRPORT_MCAST_TO_UCAST ; 
 int /*<<< orphan*/  IFLA_BRPORT_MESSAGE_AGE_TIMER ; 
 int /*<<< orphan*/  IFLA_BRPORT_MODE ; 
 int /*<<< orphan*/  IFLA_BRPORT_MULTICAST_ROUTER ; 
 int /*<<< orphan*/  IFLA_BRPORT_NEIGH_SUPPRESS ; 
 int /*<<< orphan*/  IFLA_BRPORT_NO ; 
 int /*<<< orphan*/  IFLA_BRPORT_PAD ; 
 int /*<<< orphan*/  IFLA_BRPORT_PRIORITY ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROTECT ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROXYARP ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROXYARP_WIFI ; 
 int /*<<< orphan*/  IFLA_BRPORT_ROOT_ID ; 
 int /*<<< orphan*/  IFLA_BRPORT_STATE ; 
 int /*<<< orphan*/  IFLA_BRPORT_TOPOLOGY_CHANGE_ACK ; 
 int /*<<< orphan*/  IFLA_BRPORT_UNICAST_FLOOD ; 
 int /*<<< orphan*/  IFLA_BRPORT_VLAN_TUNNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct net_bridge_port* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
			      const struct net_bridge_port *p)
{
	u8 mode = !!(p->flags & BR_HAIRPIN_MODE);
	struct net_bridge_port *backup_p;
	u64 timerval;

	if (FUNC5(skb, IFLA_BRPORT_STATE, p->state) ||
	    FUNC2(skb, IFLA_BRPORT_PRIORITY, p->priority) ||
	    FUNC3(skb, IFLA_BRPORT_COST, p->path_cost) ||
	    FUNC5(skb, IFLA_BRPORT_MODE, mode) ||
	    FUNC5(skb, IFLA_BRPORT_GUARD, !!(p->flags & BR_BPDU_GUARD)) ||
	    FUNC5(skb, IFLA_BRPORT_PROTECT,
		       !!(p->flags & BR_ROOT_BLOCK)) ||
	    FUNC5(skb, IFLA_BRPORT_FAST_LEAVE,
		       !!(p->flags & BR_MULTICAST_FAST_LEAVE)) ||
	    FUNC5(skb, IFLA_BRPORT_MCAST_TO_UCAST,
		       !!(p->flags & BR_MULTICAST_TO_UNICAST)) ||
	    FUNC5(skb, IFLA_BRPORT_LEARNING, !!(p->flags & BR_LEARNING)) ||
	    FUNC5(skb, IFLA_BRPORT_UNICAST_FLOOD,
		       !!(p->flags & BR_FLOOD)) ||
	    FUNC5(skb, IFLA_BRPORT_MCAST_FLOOD,
		       !!(p->flags & BR_MCAST_FLOOD)) ||
	    FUNC5(skb, IFLA_BRPORT_BCAST_FLOOD,
		       !!(p->flags & BR_BCAST_FLOOD)) ||
	    FUNC5(skb, IFLA_BRPORT_PROXYARP, !!(p->flags & BR_PROXYARP)) ||
	    FUNC5(skb, IFLA_BRPORT_PROXYARP_WIFI,
		       !!(p->flags & BR_PROXYARP_WIFI)) ||
	    FUNC1(skb, IFLA_BRPORT_ROOT_ID, sizeof(struct ifla_bridge_id),
		    &p->designated_root) ||
	    FUNC1(skb, IFLA_BRPORT_BRIDGE_ID, sizeof(struct ifla_bridge_id),
		    &p->designated_bridge) ||
	    FUNC2(skb, IFLA_BRPORT_DESIGNATED_PORT, p->designated_port) ||
	    FUNC2(skb, IFLA_BRPORT_DESIGNATED_COST, p->designated_cost) ||
	    FUNC2(skb, IFLA_BRPORT_ID, p->port_id) ||
	    FUNC2(skb, IFLA_BRPORT_NO, p->port_no) ||
	    FUNC5(skb, IFLA_BRPORT_TOPOLOGY_CHANGE_ACK,
		       p->topology_change_ack) ||
	    FUNC5(skb, IFLA_BRPORT_CONFIG_PENDING, p->config_pending) ||
	    FUNC5(skb, IFLA_BRPORT_VLAN_TUNNEL, !!(p->flags &
							BR_VLAN_TUNNEL)) ||
	    FUNC2(skb, IFLA_BRPORT_GROUP_FWD_MASK, p->group_fwd_mask) ||
	    FUNC5(skb, IFLA_BRPORT_NEIGH_SUPPRESS,
		       !!(p->flags & BR_NEIGH_SUPPRESS)) ||
	    FUNC5(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
		return -EMSGSIZE;

	timerval = FUNC0(&p->message_age_timer);
	if (FUNC4(skb, IFLA_BRPORT_MESSAGE_AGE_TIMER, timerval,
			      IFLA_BRPORT_PAD))
		return -EMSGSIZE;
	timerval = FUNC0(&p->forward_delay_timer);
	if (FUNC4(skb, IFLA_BRPORT_FORWARD_DELAY_TIMER, timerval,
			      IFLA_BRPORT_PAD))
		return -EMSGSIZE;
	timerval = FUNC0(&p->hold_timer);
	if (FUNC4(skb, IFLA_BRPORT_HOLD_TIMER, timerval,
			      IFLA_BRPORT_PAD))
		return -EMSGSIZE;

#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
	if (nla_put_u8(skb, IFLA_BRPORT_MULTICAST_ROUTER,
		       p->multicast_router))
		return -EMSGSIZE;
#endif

	/* we might be called only with br->lock */
	FUNC7();
	backup_p = FUNC6(p->backup_port);
	if (backup_p)
		FUNC3(skb, IFLA_BRPORT_BACKUP_PORT,
			    backup_p->dev->ifindex);
	FUNC8();

	return 0;
}