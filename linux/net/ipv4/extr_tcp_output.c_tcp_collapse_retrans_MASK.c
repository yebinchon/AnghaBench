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
struct tcp_sock {struct sk_buff* retransmit_skb_hint; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int sacked; int /*<<< orphan*/  eor; int /*<<< orphan*/  tcp_flags; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TCPCB_EVER_RETRANS ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct sock*) ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct sk_buff*,int,int) ; 

__attribute__((used)) static bool FUNC14(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC10(sk);
	struct sk_buff *next_skb = FUNC5(skb);
	int next_skb_size;

	next_skb_size = next_skb->len;

	FUNC0(FUNC12(skb) != 1 || FUNC12(next_skb) != 1);

	if (next_skb_size) {
		if (next_skb_size <= FUNC2(skb))
			FUNC3(next_skb, 0, FUNC4(skb, next_skb_size),
				      next_skb_size);
		else if (!FUNC13(skb, next_skb, 1, next_skb_size))
			return false;
	}
	FUNC8(sk, next_skb, skb);

	/* Update sequence range on original skb. */
	FUNC1(skb)->end_seq = FUNC1(next_skb)->end_seq;

	/* Merge over control information. This moves PSH/FIN etc. over */
	FUNC1(skb)->tcp_flags |= FUNC1(next_skb)->tcp_flags;

	/* All done, get rid of second SKB and account for it so
	 * packet counting does not break.
	 */
	FUNC1(skb)->sacked |= FUNC1(next_skb)->sacked & TCPCB_EVER_RETRANS;
	FUNC1(skb)->eor = FUNC1(next_skb)->eor;

	/* changed transmit queue under us so clear hints */
	FUNC7(tp);
	if (next_skb == tp->retransmit_skb_hint)
		tp->retransmit_skb_hint = skb;

	FUNC6(sk, next_skb, FUNC12(next_skb));

	FUNC11(skb, next_skb);

	FUNC9(next_skb, sk);
	return true;
}