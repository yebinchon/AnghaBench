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
struct tcp_sock {int /*<<< orphan*/  write_seq; scalar_t__ snd_nxt; } ;
struct sock {int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  tcp_rtx_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; int /*<<< orphan*/  tcp_tsorted_anchor; } ;
struct TYPE_2__ {int tcp_flags; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TCP_HEADER ; 
 int TCPHDR_ACK ; 
 int TCPHDR_FIN ; 
 int /*<<< orphan*/  TCP_NAGLE_OFF ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct sock*) ; 
 struct sk_buff* FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int) ; 

void FUNC16(struct sock *sk)
{
	struct sk_buff *skb, *tskb = FUNC14(sk);
	struct tcp_sock *tp = FUNC11(sk);

	/* Optimization, tack on the FIN if we have one skb in write queue and
	 * this skb was not yet sent, or we are under memory pressure.
	 * Note: in the latter case, FIN packet will be sent after a timeout,
	 * as TCP stack thinks it has already been transmitted.
	 */
	if (!tskb && FUNC12(sk))
		tskb = FUNC6(&sk->tcp_rtx_queue);

	if (tskb) {
		FUNC1(tskb)->tcp_flags |= TCPHDR_FIN;
		FUNC1(tskb)->end_seq++;
		tp->write_seq++;
		if (FUNC13(sk)) {
			/* This means tskb was already sent.
			 * Pretend we included the FIN on previous transmit.
			 * We need to set tp->snd_nxt to the value it would have
			 * if FIN had been sent. This is because retransmit path
			 * does not change tp->snd_nxt.
			 */
			FUNC2(tp->snd_nxt, tp->snd_nxt + 1);
			return;
		}
	} else {
		skb = FUNC4(MAX_TCP_HEADER, sk->sk_allocation);
		if (FUNC15(!skb))
			return;

		FUNC0(&skb->tcp_tsorted_anchor);
		FUNC7(skb, MAX_TCP_HEADER);
		FUNC5(sk, skb->truesize);
		/* FIN eats a sequence byte, write_seq advanced by tcp_queue_skb(). */
		FUNC9(skb, tp->write_seq,
				     TCPHDR_ACK | TCPHDR_FIN);
		FUNC10(sk, skb);
	}
	FUNC3(sk, FUNC8(sk), TCP_NAGLE_OFF);
}