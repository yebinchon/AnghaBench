#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct net_bridge_port {scalar_t__ state; int flags; struct net_bridge* br; } ;
struct net_bridge_mdb_entry {int /*<<< orphan*/  host_joined; } ;
struct net_bridge_fdb_entry {unsigned long used; int /*<<< orphan*/  dst; scalar_t__ is_local; } ;
struct net_bridge {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct nd_msg {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef  enum br_pkt_type { ____Placeholder_br_pkt_type } br_pkt_type ;
struct TYPE_11__ {int src_port_isolated; TYPE_2__* brdev; } ;
struct TYPE_10__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_9__ {scalar_t__ nexthdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  multicast; } ;
struct TYPE_8__ {int flags; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_NEIGH_SUPPRESS_ENABLED ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int BR_ISOLATED ; 
 int BR_LEARNING ; 
 int BR_PKT_BROADCAST ; 
#define  BR_PKT_MULTICAST 129 
#define  BR_PKT_UNICAST 128 
 scalar_t__ BR_STATE_DISABLED ; 
 scalar_t__ BR_STATE_LEARNING ; 
 int /*<<< orphan*/  CONFIG_INET ; 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ETH_P_RARP ; 
 int IFF_PROMISC ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_bridge*,int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_bridge*,int /*<<< orphan*/ ,struct net_bridge_port*,struct nd_msg*) ; 
 struct net_bridge_fdb_entry* FUNC6 (struct net_bridge*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_bridge*,struct sk_buff*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 struct nd_msg* FUNC10 (struct sk_buff*,struct nd_msg*) ; 
 struct net_bridge_mdb_entry* FUNC11 (struct net_bridge*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_bridge_mdb_entry*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_bridge*,TYPE_4__*) ; 
 scalar_t__ FUNC15 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct sk_buff*) ; 
 struct net_bridge_port* FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct net_bridge_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_bridge_port*) ; 
 scalar_t__ FUNC27 (struct sk_buff*,int) ; 

int FUNC28(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct net_bridge_port *p = FUNC18(skb->dev);
	enum br_pkt_type pkt_type = BR_PKT_UNICAST;
	struct net_bridge_fdb_entry *dst = NULL;
	struct net_bridge_mdb_entry *mdst;
	bool local_rcv, mcast_hit = false;
	struct net_bridge *br;
	u16 vid = 0;

	if (!p || p->state == BR_STATE_DISABLED)
		goto drop;

	if (!FUNC3(p->br, FUNC26(p), skb, &vid))
		goto out;

	FUNC25(p, skb);

	/* insert into forwarding database after filtering to avoid spoofing */
	br = p->br;
	if (p->flags & BR_LEARNING)
		FUNC7(br, p, FUNC19(skb)->h_source, vid, false);

	local_rcv = !!(br->dev->flags & IFF_PROMISC);
	if (FUNC23(FUNC19(skb)->h_dest)) {
		/* by definition the broadcast is also a multicast address */
		if (FUNC22(FUNC19(skb)->h_dest)) {
			pkt_type = BR_PKT_BROADCAST;
			local_rcv = true;
		} else {
			pkt_type = BR_PKT_MULTICAST;
			if (FUNC15(br, p, skb, vid))
				goto drop;
		}
	}

	if (p->state == BR_STATE_LEARNING)
		goto drop;

	FUNC0(skb)->brdev = br->dev;
	FUNC0(skb)->src_port_isolated = !!(p->flags & BR_ISOLATED);

	if (FUNC2(CONFIG_INET) &&
	    (skb->protocol == FUNC20(ETH_P_ARP) ||
	     skb->protocol == FUNC20(ETH_P_RARP))) {
		FUNC4(skb, br, vid, p);
	} else if (FUNC2(CONFIG_IPV6) &&
		   skb->protocol == FUNC20(ETH_P_IPV6) &&
		   FUNC16(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
		   FUNC27(skb, sizeof(struct ipv6hdr) +
				 sizeof(struct nd_msg)) &&
		   FUNC21(skb)->nexthdr == IPPROTO_ICMPV6) {
			struct nd_msg *msg, _msg;

			msg = FUNC10(skb, &_msg);
			if (msg)
				FUNC5(skb, br, vid, p, msg);
	}

	switch (pkt_type) {
	case BR_PKT_MULTICAST:
		mdst = FUNC11(br, skb, vid);
		if ((mdst || FUNC1(skb)) &&
		    FUNC14(br, FUNC19(skb))) {
			if ((mdst && mdst->host_joined) ||
			    FUNC13(br)) {
				local_rcv = true;
				br->dev->stats.multicast++;
			}
			mcast_hit = true;
		} else {
			local_rcv = true;
			br->dev->stats.multicast++;
		}
		break;
	case BR_PKT_UNICAST:
		dst = FUNC6(br, FUNC19(skb)->h_dest, vid);
	default:
		break;
	}

	if (dst) {
		unsigned long now = jiffies;

		if (dst->is_local)
			return FUNC17(skb);

		if (now != dst->used)
			dst->used = now;
		FUNC9(dst->dst, skb, local_rcv, false);
	} else {
		if (!mcast_hit)
			FUNC8(br, skb, pkt_type, local_rcv, false);
		else
			FUNC12(mdst, skb, local_rcv, false);
	}

	if (local_rcv)
		return FUNC17(skb);

out:
	return 0;
drop:
	FUNC24(skb);
	goto out;
}