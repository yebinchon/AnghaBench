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
typedef  int u32 ;
struct tcp_sock {int snd_una; } ;
struct tcp_sacktag_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int sacked; int end_seq; int seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LINUX_MIB_SACKSHIFTFALLBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPCB_LOST ; 
 int TCPCB_SACKED_ACKED ; 
 int TCPCB_SACKED_RETRANS ; 
 int TCPCB_TAGBITS ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*,struct sk_buff*,struct tcp_sacktag_state*,int,int,int,int) ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,struct sk_buff*,int,int) ; 

__attribute__((used)) static struct sk_buff *FUNC16(struct sock *sk, struct sk_buff *skb,
					  struct tcp_sacktag_state *state,
					  u32 start_seq, u32 end_seq,
					  bool dup_sack)
{
	struct tcp_sock *tp = FUNC10(sk);
	struct sk_buff *prev;
	int mss;
	int pcount = 0;
	int len;
	int in_sack;

	/* Normally R but no L won't result in plain S */
	if (!dup_sack &&
	    (FUNC2(skb)->sacked & (TCPCB_LOST|TCPCB_SACKED_RETRANS)) == TCPCB_SACKED_RETRANS)
		goto fallback;
	if (!FUNC5(skb))
		goto fallback;
	/* This frame is about to be dropped (was ACKed). */
	if (!FUNC3(FUNC2(skb)->end_seq, tp->snd_una))
		goto fallback;

	/* Can only happen with delayed DSACK + discard craziness */
	prev = FUNC7(skb);
	if (!prev)
		goto fallback;

	if ((FUNC2(prev)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED)
		goto fallback;

	if (!FUNC11(prev))
		goto fallback;

	in_sack = !FUNC3(start_seq, FUNC2(skb)->seq) &&
		  !FUNC4(end_seq, FUNC2(skb)->end_seq);

	if (in_sack) {
		len = skb->len;
		pcount = FUNC13(skb);
		mss = FUNC14(skb);

		/* TODO: Fix DSACKs to not fragment already SACKed and we can
		 * drop this restriction as unnecessary
		 */
		if (mss != FUNC14(prev))
			goto fallback;
	} else {
		if (!FUNC3(FUNC2(skb)->end_seq, start_seq))
			goto noop;
		/* CHECKME: This is non-MSS split case only?, this will
		 * cause skipped skbs due to advancing loop btw, original
		 * has that feature too
		 */
		if (FUNC13(skb) <= 1)
			goto noop;

		in_sack = !FUNC3(start_seq, FUNC2(skb)->seq);
		if (!in_sack) {
			/* TODO: head merge to next could be attempted here
			 * if (!after(TCP_SKB_CB(skb)->end_seq, end_seq)),
			 * though it might not be worth of the additional hassle
			 *
			 * ...we can probably just fallback to what was done
			 * previously. We could try merging non-SACKed ones
			 * as well but it probably isn't going to buy off
			 * because later SACKs might again split them, and
			 * it would make skb timestamp tracking considerably
			 * harder problem.
			 */
			goto fallback;
		}

		len = end_seq - FUNC2(skb)->seq;
		FUNC0(len < 0);
		FUNC0(len > skb->len);

		/* MSS boundaries should be honoured or else pcount will
		 * severely break even though it makes things bit trickier.
		 * Optimize common case to avoid most of the divides
		 */
		mss = FUNC12(skb);

		/* TODO: Fix DSACKs to not fragment already SACKed and we can
		 * drop this restriction as unnecessary
		 */
		if (mss != FUNC14(prev))
			goto fallback;

		if (len == mss) {
			pcount = 1;
		} else if (len < mss) {
			goto noop;
		} else {
			pcount = len / mss;
			len = pcount * mss;
		}
	}

	/* tcp_sacktag_one() won't SACK-tag ranges below snd_una */
	if (!FUNC3(FUNC2(skb)->seq + len, tp->snd_una))
		goto fallback;

	if (!FUNC15(prev, skb, pcount, len))
		goto fallback;
	if (!FUNC9(sk, prev, skb, state, pcount, len, mss, dup_sack))
		goto out;

	/* Hole filled allows collapsing with the next as well, this is very
	 * useful when hole on every nth skb pattern happens
	 */
	skb = FUNC6(prev);
	if (!skb)
		goto out;

	if (!FUNC5(skb) ||
	    ((FUNC2(skb)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED) ||
	    (mss != FUNC14(skb)))
		goto out;

	len = skb->len;
	pcount = FUNC13(skb);
	if (FUNC15(prev, skb, pcount, len))
		FUNC9(sk, prev, skb, state, pcount,
				len, mss, 0);

out:
	return prev;

noop:
	return skb;

fallback:
	FUNC1(FUNC8(sk), LINUX_MIB_SACKSHIFTFALLBACK);
	return NULL;
}