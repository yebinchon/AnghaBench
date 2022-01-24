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
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_pkts; int /*<<< orphan*/  duplicates; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {scalar_t__ rcv_nxt; scalar_t__ state; scalar_t__ rcv_unacked; int /*<<< orphan*/  reasm_buf; int /*<<< orphan*/  inputq; TYPE_1__ stats; int /*<<< orphan*/  wakeupq; scalar_t__ silent_intv_cnt; struct sk_buff_head deferdq; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ LINK_ESTABLISHING ; 
 scalar_t__ LINK_PROTOCOL ; 
 int TIPC_LINK_SND_STATE ; 
 int TIPC_LINK_UP_EVT ; 
 scalar_t__ TIPC_MAX_LINK_WIN ; 
 scalar_t__ TIPC_MIN_LINK_WIN ; 
 scalar_t__ TUNNEL_PROTOCOL ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,scalar_t__,struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_link*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_link*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_link*,struct sk_buff_head*) ; 
 int FUNC15 (struct tipc_link*,struct sk_buff_head*) ; 
 int FUNC16 (struct tipc_link*,struct sk_buff_head*) ; 
 int FUNC17 (struct tipc_link*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct tipc_link*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

int FUNC22(struct tipc_link *l, struct sk_buff *skb,
		  struct sk_buff_head *xmitq)
{
	struct sk_buff_head *defq = &l->deferdq;
	struct tipc_msg *hdr = FUNC2(skb);
	u16 seqno, rcv_nxt, win_lim;
	int rc = 0;

	/* Verify and update link state */
	if (FUNC21(FUNC11(hdr) == LINK_PROTOCOL))
		return FUNC18(l, skb, xmitq);

	/* Don't send probe at next timeout expiration */
	l->silent_intv_cnt = 0;

	do {
		hdr = FUNC2(skb);
		seqno = FUNC10(hdr);
		rcv_nxt = l->rcv_nxt;
		win_lim = rcv_nxt + TIPC_MAX_LINK_WIN;

		if (FUNC21(!FUNC6(l))) {
			if (l->state == LINK_ESTABLISHING)
				rc = TIPC_LINK_UP_EVT;
			goto drop;
		}

		/* Drop if outside receive window */
		if (FUNC21(FUNC4(seqno, rcv_nxt) || FUNC8(seqno, win_lim))) {
			l->stats.duplicates++;
			goto drop;
		}

		/* Forward queues and wake up waiting users */
		if (FUNC5(FUNC19(l, FUNC9(hdr)))) {
			FUNC14(l, xmitq);
			if (FUNC21(!FUNC12(&l->wakeupq)))
				FUNC7(l);
		}

		/* Defer delivery if sequence gap */
		if (FUNC21(seqno != rcv_nxt)) {
			FUNC1(defq, seqno, skb);
			rc |= FUNC15(l, xmitq);
			break;
		}

		/* Deliver packet */
		l->rcv_nxt++;
		l->stats.recv_pkts++;

		if (FUNC21(FUNC11(hdr) == TUNNEL_PROTOCOL))
			rc |= FUNC20(l, skb, l->inputq);
		else if (!FUNC13(l, skb, l->inputq))
			rc |= FUNC17(l, skb, l->inputq, &l->reasm_buf);
		if (FUNC21(++l->rcv_unacked >= TIPC_MIN_LINK_WIN))
			rc |= FUNC16(l, xmitq);
		if (FUNC21(rc & ~TIPC_LINK_SND_STATE))
			break;
	} while ((skb = FUNC0(defq, l->rcv_nxt)));

	return rc;
drop:
	FUNC3(skb);
	return rc;
}