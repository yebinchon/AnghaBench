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
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_6__ {int sent_fragments; int /*<<< orphan*/  sent_bundles; int /*<<< orphan*/  sent_bundled; int /*<<< orphan*/  sent_pkts; int /*<<< orphan*/  sent_fragmented; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {unsigned int window; unsigned int mtu; scalar_t__ snd_nxt; TYPE_3__* backlog; TYPE_2__ stats; int /*<<< orphan*/  addr; scalar_t__ rcv_unacked; int /*<<< orphan*/  ackers; int /*<<< orphan*/  name; struct sk_buff_head backlogq; struct sk_buff_head transmq; TYPE_1__* bc_rcvlink; scalar_t__ rcv_nxt; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ackers; int /*<<< orphan*/  nxt_retr; } ;
struct TYPE_7__ {scalar_t__ len; scalar_t__ limit; struct sk_buff* target_bskb; } ;
struct TYPE_5__ {scalar_t__ rcv_nxt; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TIPC_BC_RETR_LIM ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int TIPC_SYSTEM_IMPORTANCE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct tipc_link*) ; 
 int /*<<< orphan*/  link_rst_msg ; 
 int FUNC8 (struct tipc_link*,struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,scalar_t__) ; 
 unsigned int FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC18 (struct sk_buff_head*) ; 
 unsigned int FUNC19 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff_head*,struct sk_buff_head*) ; 
 scalar_t__ FUNC21 (struct sk_buff*,struct tipc_msg*,unsigned int) ; 
 scalar_t__ FUNC22 (struct sk_buff**,struct tipc_msg*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 

int FUNC24(struct tipc_link *l, struct sk_buff_head *list,
		   struct sk_buff_head *xmitq)
{
	struct tipc_msg *hdr = FUNC4(FUNC18(list));
	unsigned int maxwin = l->window;
	int imp = FUNC9(hdr);
	unsigned int mtu = l->mtu;
	u16 ack = l->rcv_nxt - 1;
	u16 seqno = l->snd_nxt;
	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
	struct sk_buff_head *transmq = &l->transmq;
	struct sk_buff_head *backlogq = &l->backlogq;
	struct sk_buff *skb, *_skb, **tskb;
	int pkt_cnt = FUNC19(list);
	int rc = 0;

	if (FUNC23(FUNC13(hdr) > mtu)) {
		FUNC16("Too large msg, purging xmit list %d %d %d %d %d!\n",
			FUNC19(list), FUNC15(hdr),
			FUNC14(hdr), FUNC13(hdr), mtu);
		FUNC2(list);
		return -EMSGSIZE;
	}

	/* Allow oversubscription of one data msg per source at congestion */
	if (FUNC23(l->backlog[imp].len >= l->backlog[imp].limit)) {
		if (imp == TIPC_SYSTEM_IMPORTANCE) {
			FUNC16("%s<%s>, link overflow", link_rst_msg, l->name);
			return -ENOBUFS;
		}
		rc = FUNC8(l, hdr);
	}

	if (pkt_cnt > 1) {
		l->stats.sent_fragmented++;
		l->stats.sent_fragments += pkt_cnt;
	}

	/* Prepare each packet for sending, and add to relevant queue: */
	while (FUNC19(list)) {
		skb = FUNC18(list);
		hdr = FUNC4(skb);
		FUNC12(hdr, seqno);
		FUNC10(hdr, ack);
		FUNC11(hdr, bc_ack);

		if (FUNC6(FUNC19(transmq) < maxwin)) {
			_skb = FUNC17(skb, GFP_ATOMIC);
			if (!_skb) {
				FUNC2(list);
				return -ENOBUFS;
			}
			FUNC1(list);
			FUNC3(transmq, skb);
			/* next retransmit attempt */
			if (FUNC7(l))
				FUNC0(skb)->nxt_retr = TIPC_BC_RETR_LIM;
			FUNC3(xmitq, _skb);
			FUNC0(skb)->ackers = l->ackers;
			l->rcv_unacked = 0;
			l->stats.sent_pkts++;
			seqno++;
			continue;
		}
		tskb = &l->backlog[imp].target_bskb;
		if (FUNC21(*tskb, hdr, mtu)) {
			FUNC5(FUNC1(list));
			l->stats.sent_bundled++;
			continue;
		}
		if (FUNC22(tskb, hdr, mtu, l->addr)) {
			FUNC5(FUNC1(list));
			FUNC3(backlogq, *tskb);
			l->backlog[imp].len++;
			l->stats.sent_bundled++;
			l->stats.sent_bundles++;
			continue;
		}
		l->backlog[imp].target_bskb = NULL;
		l->backlog[imp].len += FUNC19(list);
		FUNC20(list, backlogq);
	}
	l->snd_nxt = seqno;
	return rc;
}