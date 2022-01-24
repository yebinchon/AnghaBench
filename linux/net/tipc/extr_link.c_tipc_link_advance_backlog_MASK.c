#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sent_pkts; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {scalar_t__ window; scalar_t__ snd_nxt; TYPE_3__ stats; scalar_t__ rcv_unacked; int /*<<< orphan*/  ackers; struct sk_buff_head transmq; TYPE_2__* backlog; int /*<<< orphan*/  backlogq; TYPE_1__* bc_rcvlink; scalar_t__ rcv_nxt; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ackers; int /*<<< orphan*/  nxt_retr; } ;
struct TYPE_6__ {struct sk_buff* target_bskb; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {scalar_t__ rcv_nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TIPC_BC_RETR_LIM ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct tipc_link*) ; 
 size_t FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,scalar_t__) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sk_buff_head*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct tipc_link *l,
				      struct sk_buff_head *xmitq)
{
	struct sk_buff *skb, *_skb;
	struct tipc_msg *hdr;
	u16 seqno = l->snd_nxt;
	u16 ack = l->rcv_nxt - 1;
	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
	u32 imp;

	while (FUNC11(&l->transmq) < l->window) {
		skb = FUNC10(&l->backlogq);
		if (!skb)
			break;
		_skb = FUNC9(skb, GFP_ATOMIC);
		if (!_skb)
			break;
		FUNC1(&l->backlogq);
		hdr = FUNC3(skb);
		imp = FUNC5(hdr);
		l->backlog[imp].len--;
		if (FUNC12(skb == l->backlog[imp].target_bskb))
			l->backlog[imp].target_bskb = NULL;
		FUNC2(&l->transmq, skb);
		/* next retransmit attempt */
		if (FUNC4(l))
			FUNC0(skb)->nxt_retr = TIPC_BC_RETR_LIM;

		FUNC2(xmitq, _skb);
		FUNC0(skb)->ackers = l->ackers;
		FUNC8(hdr, seqno);
		FUNC6(hdr, ack);
		FUNC7(hdr, bc_ack);
		l->rcv_unacked = 0;
		l->stats.sent_pkts++;
		seqno++;
	}
	l->snd_nxt = seqno;
}