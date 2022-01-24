#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff_head {int dummy; } ;
struct TYPE_3__ {struct sk_buff_head inputq1; struct sk_buff_head namedq; int /*<<< orphan*/  link; } ;
struct tipc_node {scalar_t__ state; TYPE_1__ bc_entry; struct tipc_link_entry* links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_link_entry {int /*<<< orphan*/  maddr; struct sk_buff_head inputq; scalar_t__ link; int /*<<< orphan*/  lock; } ;
struct tipc_bearer {int identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int validated; } ;

/* Variables and functions */
 int LINK_CONFIG ; 
 int LINK_PROTOCOL ; 
 scalar_t__ SELF_UP_PEER_UP ; 
 int TIPC_LINK_DOWN_EVT ; 
 int TIPC_LINK_UP_EVT ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int TUNNEL_PROTOCOL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int FUNC10 (struct tipc_msg*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net*,int /*<<< orphan*/ ,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*,int,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 void FUNC17 (struct net*,struct sk_buff*,struct tipc_bearer*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (scalar_t__,struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC21 (struct net*,struct sk_buff_head*) ; 
 void FUNC22 (struct net*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct tipc_node*,struct tipc_msg*,int,struct sk_buff_head*) ; 
 scalar_t__ FUNC24 (struct tipc_node*,struct sk_buff*,int,struct sk_buff_head*) ; 
 struct tipc_node* FUNC25 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct tipc_node*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct tipc_node*,int,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC29 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC30 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC31 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC32 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC33 (struct tipc_node*) ; 
 scalar_t__ FUNC34 (struct net*) ; 
 int /*<<< orphan*/  FUNC35 (struct net*,struct sk_buff_head*) ; 
 scalar_t__ FUNC36 (int) ; 

void FUNC37(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
{
	struct sk_buff_head xmitq;
	struct tipc_node *n;
	struct tipc_msg *hdr;
	int bearer_id = b->identity;
	struct tipc_link_entry *le;
	u32 self = FUNC34(net);
	int usr, rc = 0;
	u16 bc_ack;

	FUNC1(&xmitq);

	/* Ensure message is well-formed before touching the header */
	FUNC0(skb)->validated = false;
	if (FUNC36(!FUNC20(&skb)))
		goto discard;
	hdr = FUNC2(skb);
	usr = FUNC10(hdr);
	bc_ack = FUNC5(hdr);

	/* Handle arrival of discovery or broadcast packet */
	if (FUNC36(FUNC7(hdr))) {
		if (FUNC36(usr == LINK_CONFIG))
			return FUNC17(net, skb, b);
		else
			return FUNC22(net, skb, bearer_id);
	}

	/* Discard unicast link messages destined for another node */
	if (FUNC36(!FUNC9(hdr) && (FUNC6(hdr) != self)))
		goto discard;

	/* Locate neighboring node that sent packet */
	n = FUNC25(net, FUNC8(hdr));
	if (FUNC36(!n))
		goto discard;
	le = &n->links[bearer_id];

	/* Ensure broadcast reception is in synch with peer's send state */
	if (FUNC36(usr == LINK_PROTOCOL))
		FUNC23(n, hdr, bearer_id, &xmitq);
	else if (FUNC36(FUNC18(n->bc_entry.link) != bc_ack))
		FUNC15(net, n->bc_entry.link, hdr);

	/* Receive packet directly if conditions permit */
	FUNC30(n);
	if (FUNC4((n->state == SELF_UP_PEER_UP) && (usr != TUNNEL_PROTOCOL))) {
		FUNC13(&le->lock);
		if (le->link) {
			rc = FUNC19(le->link, skb, &xmitq);
			skb = NULL;
		}
		FUNC14(&le->lock);
	}
	FUNC31(n);

	/* Check/update node state before receiving */
	if (FUNC36(skb)) {
		if (FUNC36(FUNC11(skb)))
			goto discard;
		FUNC32(n);
		if (FUNC24(n, skb, bearer_id, &xmitq)) {
			if (le->link) {
				rc = FUNC19(le->link, skb, &xmitq);
				skb = NULL;
			}
		}
		FUNC33(n);
	}

	if (FUNC36(rc & TIPC_LINK_UP_EVT))
		FUNC27(n, bearer_id, &xmitq);

	if (FUNC36(rc & TIPC_LINK_DOWN_EVT))
		FUNC26(n, bearer_id, false);

	if (FUNC36(!FUNC12(&n->bc_entry.namedq)))
		FUNC21(net, &n->bc_entry.namedq);

	if (FUNC36(!FUNC12(&n->bc_entry.inputq1)))
		FUNC28(n);

	if (!FUNC12(&le->inputq))
		FUNC35(net, &le->inputq);

	if (!FUNC12(&xmitq))
		FUNC16(net, bearer_id, &xmitq, &le->maddr);

	FUNC29(n);
discard:
	FUNC3(skb);
}