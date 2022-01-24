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
struct tcp_sock {int /*<<< orphan*/  packets_out; int /*<<< orphan*/  write_seq; } ;
struct tcp_skb_cb {int /*<<< orphan*/  end_seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ len; } ;

/* Variables and functions */
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct tcp_skb_cb *tcb = FUNC0(skb);

	tcb->end_seq += skb->len;
	FUNC2(skb);
	FUNC4(sk, skb->truesize);
	FUNC3(sk, skb->truesize);
	FUNC1(tp->write_seq, tcb->end_seq);
	tp->packets_out += FUNC6(skb);
}