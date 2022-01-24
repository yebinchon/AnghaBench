#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u16 ;
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  cb; } ;
struct net_bridge_port {int flags; unsigned int group_fwd_mask; int state; TYPE_2__* br; } ;
struct br_input_skb_cb {int dummy; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;
struct TYPE_6__ {unsigned char* h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_5__ {unsigned int group_fwd_mask_required; unsigned int group_fwd_mask; TYPE_1__* dev; int /*<<< orphan*/  stp_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_NO_STP ; 
#define  BR_STATE_FORWARDING 129 
#define  BR_STATE_LEARNING 128 
 int BR_VLAN_TUNNEL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int /*<<< orphan*/  NF_BR_LOCAL_IN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_LOOPBACK ; 
 int /*<<< orphan*/  RX_HANDLER_CONSUMED ; 
 int /*<<< orphan*/  RX_HANDLER_PASS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_handle_local_finish ; 
 struct net_bridge_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int FUNC7 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct sk_buff**) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

rx_handler_result_t FUNC15(struct sk_buff **pskb)
{
	struct net_bridge_port *p;
	struct sk_buff *skb = *pskb;
	const unsigned char *dest = FUNC5(skb)->h_dest;

	if (FUNC14(skb->pkt_type == PACKET_LOOPBACK))
		return RX_HANDLER_PASS;

	if (!FUNC8(FUNC5(skb)->h_source))
		goto drop;

	skb = FUNC13(skb, GFP_ATOMIC);
	if (!skb)
		return RX_HANDLER_CONSUMED;

	FUNC10(skb->cb, 0, sizeof(struct br_input_skb_cb));

	p = FUNC3(skb->dev);
	if (p->flags & BR_VLAN_TUNNEL) {
		if (FUNC2(skb, p,
						  FUNC11(p)))
			goto drop;
	}

	if (FUNC14(FUNC7(dest))) {
		u16 fwd_mask = p->br->group_fwd_mask_required;

		/*
		 * See IEEE 802.1D Table 7-10 Reserved addresses
		 *
		 * Assignment		 		Value
		 * Bridge Group Address		01-80-C2-00-00-00
		 * (MAC Control) 802.3		01-80-C2-00-00-01
		 * (Link Aggregation) 802.3	01-80-C2-00-00-02
		 * 802.1X PAE address		01-80-C2-00-00-03
		 *
		 * 802.1AB LLDP 		01-80-C2-00-00-0E
		 *
		 * Others reserved for future standardization
		 */
		fwd_mask |= p->group_fwd_mask;
		switch (dest[5]) {
		case 0x00:	/* Bridge Group Address */
			/* If STP is turned off,
			   then must forward to keep loop detection */
			if (p->br->stp_enabled == BR_NO_STP ||
			    fwd_mask & (1u << dest[5]))
				goto forward;
			*pskb = skb;
			FUNC1(skb);
			return RX_HANDLER_PASS;

		case 0x01:	/* IEEE MAC (Pause) */
			goto drop;

		case 0x0E:	/* 802.1AB LLDP */
			fwd_mask |= p->br->group_fwd_mask;
			if (fwd_mask & (1u << dest[5]))
				goto forward;
			*pskb = skb;
			FUNC1(skb);
			return RX_HANDLER_PASS;

		default:
			/* Allow selective forwarding for most other protocols */
			fwd_mask |= p->br->group_fwd_mask;
			if (fwd_mask & (1u << dest[5]))
				goto forward;
		}

		/* The else clause should be hit when nf_hook():
		 *   - returns < 0 (drop/error)
		 *   - returns = 0 (stolen/nf_queue)
		 * Thus return 1 from the okfn() to signal the skb is ok to pass
		 */
		if (FUNC0(NFPROTO_BRIDGE, NF_BR_LOCAL_IN,
			    FUNC4(skb->dev), NULL, skb, skb->dev, NULL,
			    br_handle_local_finish) == 1) {
			return RX_HANDLER_PASS;
		} else {
			return RX_HANDLER_CONSUMED;
		}
	}

forward:
	switch (p->state) {
	case BR_STATE_FORWARDING:
	case BR_STATE_LEARNING:
		if (FUNC6(p->br->dev->dev_addr, dest))
			skb->pkt_type = PACKET_HOST;

		return FUNC12(skb, pskb);
	default:
drop:
		FUNC9(skb);
	}
	return RX_HANDLER_CONSUMED;
}