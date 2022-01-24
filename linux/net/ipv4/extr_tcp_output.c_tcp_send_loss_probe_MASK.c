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
struct tcp_sock {int packets_out; scalar_t__ snd_nxt; scalar_t__ tlp_high_seq; int /*<<< orphan*/  snd_cwnd; } ;
struct sock {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  tcp_rtx_queue; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ icsk_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINUX_MIB_TCPLOSSPROBES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_FRAG_IN_RTX_QUEUE ; 
 int /*<<< orphan*/  TCP_NAGLE_OFF ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct sk_buff* FUNC12 (struct sock*) ; 
 struct tcp_sock* FUNC13 (struct sock*) ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct tcp_sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

void FUNC18(struct sock *sk)
{
	struct tcp_sock *tp = FUNC13(sk);
	struct sk_buff *skb;
	int pcount;
	int mss = FUNC9(sk);

	skb = FUNC12(sk);
	if (skb && FUNC15(tp, skb, mss)) {
		pcount = tp->packets_out;
		FUNC16(sk, mss, TCP_NAGLE_OFF, 2, GFP_ATOMIC);
		if (tp->packets_out > pcount)
			goto probe_sent;
		goto rearm_timer;
	}
	skb = FUNC5(&sk->tcp_rtx_queue);
	if (FUNC17(!skb)) {
		FUNC2(tp->packets_out,
			  "invalid inflight: %u state %u cwnd %u mss %d\n",
			  tp->packets_out, sk->sk_state, tp->snd_cwnd, mss);
		FUNC4(sk)->icsk_pending = 0;
		return;
	}

	/* At most one outstanding TLP retransmission. */
	if (tp->tlp_high_seq)
		goto rearm_timer;

	if (FUNC7(sk, skb))
		goto rearm_timer;

	pcount = FUNC14(skb);
	if (FUNC1(!pcount))
		goto rearm_timer;

	if ((pcount > 1) && (skb->len > (pcount - 1) * mss)) {
		if (FUNC17(FUNC10(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
					  (pcount - 1) * mss, mss,
					  GFP_ATOMIC)))
			goto rearm_timer;
		skb = FUNC6(skb);
	}

	if (FUNC1(!skb || !FUNC14(skb)))
		goto rearm_timer;

	if (FUNC3(sk, skb, 1))
		goto rearm_timer;

	/* Record snd_nxt for loss detection. */
	tp->tlp_high_seq = tp->snd_nxt;

probe_sent:
	FUNC0(FUNC8(sk), LINUX_MIB_TCPLOSSPROBES);
	/* Reset s.t. tcp_rearm_rto will restart timer from now */
	FUNC4(sk)->icsk_pending = 0;
rearm_timer:
	FUNC11(sk);
}