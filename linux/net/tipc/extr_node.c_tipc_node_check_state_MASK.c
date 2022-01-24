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
typedef  int u16 ;
struct tipc_node {int state; int sync_point; int capabilities; TYPE_1__* links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct tipc_link* link; } ;

/* Variables and functions */
 int FAILOVER_MSG ; 
 int /*<<< orphan*/  LINK_FAILOVER_END_EVT ; 
 int LINK_PROTOCOL ; 
 int /*<<< orphan*/  LINK_SYNCH_BEGIN_EVT ; 
 int /*<<< orphan*/  LINK_SYNCH_END_EVT ; 
 int MAX_BEARERS ; 
 int NODE_FAILINGOVER ; 
 int /*<<< orphan*/  NODE_FAILOVER_END_EVT ; 
 int NODE_SYNCHING ; 
 int /*<<< orphan*/  NODE_SYNCH_BEGIN_EVT ; 
 int /*<<< orphan*/  NODE_SYNCH_END_EVT ; 
 int /*<<< orphan*/  PEER_ESTABL_CONTACT_EVT ; 
 int /*<<< orphan*/  PEER_LOST_CONTACT_EVT ; 
 int SELF_DOWN_PEER_LEAVING ; 
 int SELF_LEAVING_PEER_DOWN ; 
 int SELF_UP_PEER_COMING ; 
 int SELF_UP_PEER_UP ; 
 int SYNCH_MSG ; 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int TIPC_TUNNEL_ENHANCED ; 
 int TUNNEL_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_node*,int*,struct sk_buff_head*,struct tipc_media_addr**) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*,int,struct sk_buff_head*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 struct tipc_msg* FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int FUNC10 (struct tipc_msg*) ; 
 int FUNC11 (struct tipc_msg*) ; 
 int FUNC12 (struct tipc_msg*) ; 
 int FUNC13 (struct tipc_msg*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_link*) ; 
 scalar_t__ FUNC18 (struct tipc_link*) ; 
 scalar_t__ FUNC19 (struct tipc_link*) ; 
 int FUNC20 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_link*,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC22 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct tipc_node*,struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (struct tipc_node*,int,char*) ; 
 scalar_t__ FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct tipc_node*,int,char*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,int,char*) ; 

__attribute__((used)) static bool FUNC30(struct tipc_node *n, struct sk_buff *skb,
				  int bearer_id, struct sk_buff_head *xmitq)
{
	struct tipc_msg *hdr = FUNC2(skb);
	int usr = FUNC13(hdr);
	int mtyp = FUNC12(hdr);
	u16 oseqno = FUNC10(hdr);
	u16 exp_pkts = FUNC7(hdr);
	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
	int state = n->state;
	struct tipc_link *l, *tnl, *pl = NULL;
	struct tipc_media_addr *maddr;
	int pb_id;

	if (FUNC27()) {
		FUNC29(skb, false, "skb for node state check");
		FUNC26(n, true, " ");
	}
	l = n->links[bearer_id].link;
	if (!l)
		return false;
	rcv_nxt = FUNC20(l);


	if (FUNC4((state == SELF_UP_PEER_UP) && (usr != TUNNEL_PROTOCOL)))
		return true;

	/* Find parallel link, if any */
	for (pb_id = 0; pb_id < MAX_BEARERS; pb_id++) {
		if ((pb_id != bearer_id) && n->links[pb_id].link) {
			pl = n->links[pb_id].link;
			break;
		}
	}

	if (!FUNC21(l, hdr)) {
		FUNC29(skb, false, "PROTO invalid (2)!");
		FUNC25(l, TIPC_DUMP_NONE, "PROTO invalid (2)!");
		return false;
	}

	/* Check and update node accesibility if applicable */
	if (state == SELF_UP_PEER_COMING) {
		if (!FUNC19(l))
			return true;
		if (!FUNC8(hdr))
			return true;
		FUNC22(n, PEER_ESTABL_CONTACT_EVT);
	}

	if (state == SELF_DOWN_PEER_LEAVING) {
		if (FUNC9(hdr))
			return false;
		FUNC22(n, PEER_LOST_CONTACT_EVT);
		return true;
	}

	if (state == SELF_LEAVING_PEER_DOWN)
		return false;

	/* Ignore duplicate packets */
	if ((usr != LINK_PROTOCOL) && FUNC3(oseqno, rcv_nxt))
		return true;

	/* Initiate or update failover mode if applicable */
	if ((usr == TUNNEL_PROTOCOL) && (mtyp == FAILOVER_MSG)) {
		syncpt = oseqno + exp_pkts - 1;
		if (pl && !FUNC17(pl)) {
			FUNC0(n, &pb_id, xmitq, &maddr);
			FUNC28(n, true,
						  "node link down <- failover!");
			FUNC24(FUNC16(pl),
							FUNC16(l));
		}

		/* If parallel link was already down, and this happened before
		 * the tunnel link came up, node failover was never started.
		 * Ensure that a FAILOVER_MSG is sent to get peer out of
		 * NODE_FAILINGOVER state, also this node must accept
		 * TUNNEL_MSGs from peer.
		 */
		if (n->state != NODE_FAILINGOVER)
			FUNC23(n, pl, l, xmitq);

		/* If pkts arrive out of order, use lowest calculated syncpt */
		if (FUNC3(syncpt, n->sync_point))
			n->sync_point = syncpt;
	}

	/* Open parallel link when tunnel link reaches synch point */
	if ((n->state == NODE_FAILINGOVER) && FUNC19(l)) {
		if (!FUNC5(rcv_nxt, n->sync_point))
			return true;
		FUNC22(n, NODE_FAILOVER_END_EVT);
		if (pl)
			FUNC15(pl, LINK_FAILOVER_END_EVT);
		return true;
	}

	/* No synching needed if only one link */
	if (!pl || !FUNC19(pl))
		return true;

	/* Initiate synch mode if applicable */
	if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG) && (oseqno == 1)) {
		if (n->capabilities & TIPC_TUNNEL_ENHANCED)
			syncpt = FUNC11(hdr);
		else
			syncpt = FUNC10(FUNC6(hdr)) + exp_pkts - 1;
		if (!FUNC19(l))
			FUNC1(n, bearer_id, xmitq);
		if (n->state == SELF_UP_PEER_UP) {
			n->sync_point = syncpt;
			FUNC15(l, LINK_SYNCH_BEGIN_EVT);
			FUNC22(n, NODE_SYNCH_BEGIN_EVT);
		}
	}

	/* Open tunnel link when parallel link reaches synch point */
	if (n->state == NODE_SYNCHING) {
		if (FUNC18(l)) {
			tnl = l;
		} else {
			tnl = pl;
			pl = l;
		}
		inputq_len = FUNC14(FUNC16(pl));
		dlv_nxt = FUNC20(pl) - inputq_len;
		if (FUNC5(dlv_nxt, n->sync_point)) {
			FUNC15(tnl, LINK_SYNCH_END_EVT);
			FUNC22(n, NODE_SYNCH_END_EVT);
			return true;
		}
		if (l == pl)
			return true;
		if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG))
			return true;
		if (usr == LINK_PROTOCOL)
			return true;
		return false;
	}
	return true;
}