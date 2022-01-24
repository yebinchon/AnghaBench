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
typedef  scalar_t__ u32 ;
struct sk_buff_head {int dummy; } ;
struct tipc_bclink_entry {struct sk_buff_head namedq; struct sk_buff_head inputq1; int /*<<< orphan*/  link; } ;
struct tipc_node {struct tipc_bclink_entry bc_entry; struct tipc_link_entry* links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_link_entry {int /*<<< orphan*/  maddr; int /*<<< orphan*/  link; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int BCAST_PROTOCOL ; 
 int TIPC_LINK_DOWN_EVT ; 
 int TIPC_LINK_SND_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 
 int FUNC7 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct sk_buff_head*) ; 
 struct tipc_node* FUNC11 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_node*) ; 
 scalar_t__ FUNC17 (struct net*) ; 

__attribute__((used)) static void FUNC18(struct net *net, struct sk_buff *skb, int bearer_id)
{
	int rc;
	struct sk_buff_head xmitq;
	struct tipc_bclink_entry *be;
	struct tipc_link_entry *le;
	struct tipc_msg *hdr = FUNC1(skb);
	int usr = FUNC5(hdr);
	u32 dnode = FUNC3(hdr);
	struct tipc_node *n;

	FUNC0(&xmitq);

	/* If NACK for other node, let rcv link for that node peek into it */
	if ((usr == BCAST_PROTOCOL) && (dnode != FUNC17(net)))
		n = FUNC11(net, dnode);
	else
		n = FUNC11(net, FUNC4(hdr));
	if (!n) {
		FUNC2(skb);
		return;
	}
	be = &n->bc_entry;
	le = &n->links[bearer_id];

	rc = FUNC7(net, be->link, skb);

	/* Broadcast ACKs are sent on a unicast link */
	if (rc & TIPC_LINK_SND_STATE) {
		FUNC14(n);
		FUNC9(le->link, &xmitq);
		FUNC15(n);
	}

	if (!FUNC6(&xmitq))
		FUNC8(net, bearer_id, &xmitq, &le->maddr);

	if (!FUNC6(&be->inputq1))
		FUNC12(n);

	/* Handle NAME_DISTRIBUTOR messages sent from 1.7 nodes */
	if (!FUNC6(&n->bc_entry.namedq))
		FUNC10(net, &n->bc_entry.namedq);

	/* If reassembly or retransmission failure => reset all links to peer */
	if (rc & TIPC_LINK_DOWN_EVT)
		FUNC16(n);

	FUNC13(n);
}