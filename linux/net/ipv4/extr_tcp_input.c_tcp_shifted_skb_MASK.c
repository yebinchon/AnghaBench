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
typedef  int u32 ;
struct tcp_sock {unsigned int lost_cnt_hint; struct sk_buff* lost_skb_hint; struct sk_buff* retransmit_skb_hint; } ;
struct tcp_sacktag_state {int /*<<< orphan*/  rate; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ delivered_mstamp; } ;
struct TYPE_4__ {int seq; int sacked; int tcp_gso_size; int tcp_flags; TYPE_1__ tx; scalar_t__ end_seq; int /*<<< orphan*/  eor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LINUX_MIB_SACKMERGED ; 
 int /*<<< orphan*/  LINUX_MIB_SACKSHIFTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPCB_EVER_RETRANS ; 
 int TCPHDR_FIN ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct tcp_sacktag_state*,int,int,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 

__attribute__((used)) static bool FUNC16(struct sock *sk, struct sk_buff *prev,
			    struct sk_buff *skb,
			    struct tcp_sacktag_state *state,
			    unsigned int pcount, int shifted, int mss,
			    bool dup_sack)
{
	struct tcp_sock *tp = FUNC10(sk);
	u32 start_seq = FUNC2(skb)->seq;	/* start of newly-SACKed */
	u32 end_seq = start_seq + shifted;	/* end of newly-SACKed */

	FUNC0(!pcount);

	/* Adjust counters and hints for the newly sacked sequence
	 * range but discard the return value since prev is already
	 * marked. We must tag the range first because the seq
	 * advancement below implicitly advances
	 * tcp_highest_sack_seq() when skb is highest_sack.
	 */
	FUNC9(sk, state, FUNC2(skb)->sacked,
			start_seq, end_seq, dup_sack, pcount,
			FUNC14(skb));
	FUNC7(sk, skb, state->rate);

	if (skb == tp->lost_skb_hint)
		tp->lost_cnt_hint += pcount;

	FUNC2(prev)->end_seq += shifted;
	FUNC2(skb)->seq += shifted;

	FUNC13(prev, pcount);
	FUNC3(FUNC12(skb) < pcount);
	FUNC13(skb, -pcount);

	/* When we're adding to gso_segs == 1, gso_size will be zero,
	 * in theory this shouldn't be necessary but as long as DSACK
	 * code can come after this skb later on it's better to keep
	 * setting gso_size to something.
	 */
	if (!FUNC2(prev)->tcp_gso_size)
		FUNC2(prev)->tcp_gso_size = mss;

	/* CHECKME: To clear or not to clear? Mimics normal skb currently */
	if (FUNC12(skb) <= 1)
		FUNC2(skb)->tcp_gso_size = 0;

	/* Difference in this won't matter, both ACKed by the same cumul. ACK */
	FUNC2(prev)->sacked |= (FUNC2(skb)->sacked & TCPCB_EVER_RETRANS);

	if (skb->len > 0) {
		FUNC0(!FUNC12(skb));
		FUNC1(FUNC4(sk), LINUX_MIB_SACKSHIFTED);
		return false;
	}

	/* Whole SKB was eaten :-) */

	if (skb == tp->retransmit_skb_hint)
		tp->retransmit_skb_hint = prev;
	if (skb == tp->lost_skb_hint) {
		tp->lost_skb_hint = prev;
		tp->lost_cnt_hint -= FUNC12(prev);
	}

	FUNC2(prev)->tcp_flags |= FUNC2(skb)->tcp_flags;
	FUNC2(prev)->eor = FUNC2(skb)->eor;
	if (FUNC2(skb)->tcp_flags & TCPHDR_FIN)
		FUNC2(prev)->end_seq++;

	if (skb == FUNC6(sk))
		FUNC5(sk, skb);

	FUNC11(prev, skb);
	if (FUNC15(FUNC2(prev)->tx.delivered_mstamp))
		FUNC2(prev)->tx.delivered_mstamp = 0;

	FUNC8(skb, sk);

	FUNC1(FUNC4(sk), LINUX_MIB_SACKMERGED);

	return true;
}