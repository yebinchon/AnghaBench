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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_member {int /*<<< orphan*/  state; int /*<<< orphan*/  bc_rcv_nxt; struct sk_buff_head deferredq; int /*<<< orphan*/  instance; } ;
struct tipc_group {int /*<<< orphan*/  events; int /*<<< orphan*/  instance; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  orig_member; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRP_ACK_MSG ; 
 int /*<<< orphan*/  MBR_LEAVING ; 
#define  TIPC_GRP_BCAST_MSG 131 
#define  TIPC_GRP_MCAST_MSG 130 
#define  TIPC_GRP_MEMBER_EVT 129 
#define  TIPC_GRP_UCAST_MSG 128 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*) ; 
 int FUNC15 (struct tipc_msg*) ; 
 struct sk_buff* FUNC16 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_group*,struct tipc_member*) ; 
 struct tipc_member* FUNC18 (struct tipc_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_member*) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_group*,struct tipc_member*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct tipc_group*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff_head*) ; 

void FUNC23(struct tipc_group *grp, struct sk_buff_head *inputq,
			   struct sk_buff_head *xmitq)
{
	struct sk_buff *skb = FUNC1(inputq);
	bool ack, deliver, update, leave = false;
	struct sk_buff_head *defq;
	struct tipc_member *m;
	struct tipc_msg *hdr;
	u32 node, port;
	int mtyp, blks;

	if (!skb)
		return;

	hdr = FUNC4(skb);
	node =  FUNC13(hdr);
	port = FUNC14(hdr);

	if (!FUNC11(hdr))
		goto drop;

	m = FUNC18(grp, node, port);
	if (!FUNC19(m))
		goto drop;

	if (FUNC6(FUNC10(hdr), m->bc_rcv_nxt))
		goto drop;

	FUNC0(skb)->orig_member = m->instance;
	defq = &m->deferredq;
	FUNC21(skb, defq);

	while ((skb = FUNC16(defq))) {
		hdr = FUNC4(skb);
		mtyp = FUNC15(hdr);
		blks = FUNC8(hdr);
		deliver = true;
		ack = false;
		update = false;

		if (FUNC7(FUNC10(hdr), m->bc_rcv_nxt))
			break;

		/* Decide what to do with message */
		switch (mtyp) {
		case TIPC_GRP_MCAST_MSG:
			if (FUNC12(hdr) != grp->instance) {
				update = true;
				deliver = false;
			}
			/* Fall thru */
		case TIPC_GRP_BCAST_MSG:
			m->bc_rcv_nxt++;
			ack = FUNC9(hdr);
			break;
		case TIPC_GRP_UCAST_MSG:
			break;
		case TIPC_GRP_MEMBER_EVT:
			if (m->state == MBR_LEAVING)
				leave = true;
			if (!grp->events)
				deliver = false;
			break;
		default:
			break;
		}

		/* Execute decisions */
		FUNC1(defq);
		if (deliver)
			FUNC3(inputq, skb);
		else
			FUNC5(skb);

		if (ack)
			FUNC20(grp, m, GRP_ACK_MSG, xmitq);

		if (leave) {
			FUNC2(defq);
			FUNC17(grp, m);
			break;
		}
		if (!update)
			continue;

		FUNC22(grp, blks, node, port, xmitq);
	}
	return;
drop:
	FUNC5(skb);
}