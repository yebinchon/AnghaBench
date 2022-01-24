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
typedef  int u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_mon_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sent_nacks; int /*<<< orphan*/  sent_probes; int /*<<< orphan*/  sent_states; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {int rcv_nxt; int peer_caps; int /*<<< orphan*/  name; TYPE_2__ stats; int /*<<< orphan*/  if_name; int /*<<< orphan*/  advertised_mtu; int /*<<< orphan*/  peer_session; scalar_t__ rcv_unacked; int /*<<< orphan*/  bearer_id; int /*<<< orphan*/  net; int /*<<< orphan*/  snd_nxt_state; scalar_t__ snd_nxt; TYPE_1__* bc_sndlink; int /*<<< orphan*/  net_plane; int /*<<< orphan*/  session; int /*<<< orphan*/  addr; struct tipc_mon_state mon_state; struct sk_buff_head deferdq; struct tipc_link* bc_rcvlink; } ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct TYPE_3__ {scalar_t__ snd_nxt; } ;

/* Variables and functions */
 int ACTIVATE_MSG ; 
 int INT_H_SIZE ; 
 int /*<<< orphan*/  LINK_PROTOCOL ; 
 scalar_t__ MAX_GAP_ACK_BLKS_SZ ; 
 int STATE_MSG ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int TIPC_GAP_ACK_BLOCK ; 
 int TIPC_LINK_PROTO_SEQNO ; 
 int TIPC_MAX_IF_NAME ; 
 int U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*) ; 
 int FUNC4 (struct tipc_link*) ; 
 void* FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC29 (void*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct tipc_link*,void*) ; 
 scalar_t__ FUNC31 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC32 (struct tipc_link*) ; 
 scalar_t__ tipc_max_domain_size ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,void*,int*,struct tipc_mon_state*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC34 (int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC37(struct tipc_link *l, int mtyp, bool probe,
				      bool probe_reply, u16 rcvgap,
				      int tolerance, int priority,
				      struct sk_buff_head *xmitq)
{
	struct tipc_link *bcl = l->bc_rcvlink;
	struct sk_buff *skb;
	struct tipc_msg *hdr;
	struct sk_buff_head *dfq = &l->deferdq;
	bool node_up = FUNC4(bcl);
	struct tipc_mon_state *mstate = &l->mon_state;
	int dlen = 0;
	void *data;
	u16 glen = 0;

	/* Don't send protocol message during reset or link failover */
	if (FUNC31(l))
		return;

	if (!FUNC32(l) && (mtyp == STATE_MSG))
		return;

	if (!FUNC27(dfq))
		rcvgap = FUNC2(FUNC26(dfq)) - l->rcv_nxt;

	skb = FUNC34(LINK_PROTOCOL, mtyp, INT_H_SIZE,
			      tipc_max_domain_size + MAX_GAP_ACK_BLKS_SZ,
			      l->addr, FUNC35(l->net), 0, 0, 0);
	if (!skb)
		return;

	hdr = FUNC1(skb);
	data = FUNC5(hdr);
	FUNC24(hdr, l->session);
	FUNC10(hdr, l->bearer_id);
	FUNC18(hdr, l->net_plane);
	FUNC19(hdr, l->snd_nxt);
	FUNC6(hdr, l->rcv_nxt - 1);
	FUNC9(hdr, bcl->rcv_nxt - 1);
	FUNC7(hdr, !node_up);
	FUNC14(hdr, l->bc_sndlink->snd_nxt - 1);
	FUNC15(hdr, tolerance);
	FUNC16(hdr, priority);
	FUNC21(hdr, node_up);
	FUNC22(hdr, 0);
	FUNC23(hdr, l->snd_nxt + U16_MAX / 2);

	if (mtyp == STATE_MSG) {
		if (l->peer_caps & TIPC_LINK_PROTO_SEQNO)
			FUNC23(hdr, l->snd_nxt_state++);
		FUNC22(hdr, rcvgap);
		FUNC8(hdr, FUNC3(bcl));
		FUNC20(hdr, probe);
		FUNC13(hdr, probe || probe_reply);
		if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
			glen = FUNC30(l, data);
		FUNC33(l->net, data + glen, &dlen, mstate, l->bearer_id);
		FUNC25(hdr, INT_H_SIZE + glen + dlen);
		FUNC28(skb, INT_H_SIZE + glen + dlen);
		l->stats.sent_states++;
		l->rcv_unacked = 0;
	} else {
		/* RESET_MSG or ACTIVATE_MSG */
		if (mtyp == ACTIVATE_MSG) {
			FUNC12(hdr, 1);
			FUNC11(hdr, l->peer_session);
		}
		FUNC17(hdr, l->advertised_mtu);
		FUNC29(data, l->if_name);
		FUNC25(hdr, INT_H_SIZE + TIPC_MAX_IF_NAME);
		FUNC28(skb, INT_H_SIZE + TIPC_MAX_IF_NAME);
	}
	if (probe)
		l->stats.sent_probes++;
	if (rcvgap)
		l->stats.sent_nacks++;
	skb->priority = TC_PRIO_CONTROL;
	FUNC0(xmitq, skb);
	FUNC36(skb, false, l->name);
}