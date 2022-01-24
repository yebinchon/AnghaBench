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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ sacked_out; scalar_t__ reordering; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int sacked; } ;
struct TYPE_3__ {scalar_t__ icsk_ca_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TCPCB_LOST ; 
 scalar_t__ const TCP_CA_Recovery ; 
 int /*<<< orphan*/  TCP_FRAG_IN_RTX_QUEUE ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 

void FUNC8(struct sock *sk, bool snd_una_advanced)
{
	const u8 state = FUNC1(sk)->icsk_ca_state;
	struct tcp_sock *tp = FUNC4(sk);

	if ((state < TCP_CA_Recovery && tp->sacked_out >= tp->reordering) ||
	    (state == TCP_CA_Recovery && snd_una_advanced)) {
		struct sk_buff *skb = FUNC3(sk);
		u32 mss;

		if (FUNC0(skb)->sacked & TCPCB_LOST)
			return;

		mss = FUNC6(skb);
		if (FUNC7(skb) > 1 && skb->len > mss)
			FUNC2(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
				     mss, mss, GFP_ATOMIC);

		FUNC5(tp, skb);
	}
}