#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {int nonagle; int /*<<< orphan*/  write_seq; } ;
struct tcp_skb_cb {scalar_t__ sacked; int /*<<< orphan*/  tcp_flags; int /*<<< orphan*/  end_seq; int /*<<< orphan*/  seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPHDR_ACK ; 
 int TCP_NAGLE_PUSH ; 
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct tcp_skb_cb *tcb = FUNC0(skb);

	skb->csum    = 0;
	tcb->seq     = tcb->end_seq = tp->write_seq;
	tcb->tcp_flags = TCPHDR_ACK;
	tcb->sacked  = 0;
	FUNC1(skb);
	FUNC4(sk, skb);
	FUNC3(sk, skb->truesize);
	FUNC2(sk, skb->truesize);
	if (tp->nonagle & TCP_NAGLE_PUSH)
		tp->nonagle &= ~TCP_NAGLE_PUSH;

	FUNC6(sk);
}