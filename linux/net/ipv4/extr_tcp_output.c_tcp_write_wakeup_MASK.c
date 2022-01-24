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
struct tcp_sock {unsigned int pushed_seq; scalar_t__ snd_una; int /*<<< orphan*/  snd_up; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {unsigned int seq; unsigned int end_seq; int /*<<< orphan*/  tcp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TCPHDR_PSH ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_FRAG_IN_WRITE_QUEUE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct tcp_sock*) ; 
 int FUNC13 (struct sock*,int,int) ; 

int FUNC14(struct sock *sk, int mib)
{
	struct tcp_sock *tp = FUNC9(sk);
	struct sk_buff *skb;

	if (sk->sk_state == TCP_CLOSE)
		return -1;

	skb = FUNC7(sk);
	if (skb && FUNC1(FUNC0(skb)->seq, FUNC12(tp))) {
		int err;
		unsigned int mss = FUNC4(sk);
		unsigned int seg_size = FUNC12(tp) - FUNC0(skb)->seq;

		if (FUNC1(tp->pushed_seq, FUNC0(skb)->end_seq))
			tp->pushed_seq = FUNC0(skb)->end_seq;

		/* We are probing the opening of a window
		 * but the window size is != 0
		 * must have been a result SWS avoidance ( sender )
		 */
		if (seg_size < FUNC0(skb)->end_seq - FUNC0(skb)->seq ||
		    skb->len > mss) {
			seg_size = FUNC3(seg_size, mss);
			FUNC0(skb)->tcp_flags |= TCPHDR_PSH;
			if (FUNC6(sk, TCP_FRAG_IN_WRITE_QUEUE,
					 skb, seg_size, mss, GFP_ATOMIC))
				return -1;
		} else if (!FUNC10(skb))
			FUNC8(skb, mss);

		FUNC0(skb)->tcp_flags |= TCPHDR_PSH;
		err = FUNC11(sk, skb, 1, GFP_ATOMIC);
		if (!err)
			FUNC5(sk, skb);
		return err;
	} else {
		if (FUNC2(tp->snd_up, tp->snd_una + 1, tp->snd_una + 0xFFFF))
			FUNC13(sk, 1, mib);
		return FUNC13(sk, 0, mib);
	}
}