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
struct tcp_sock {scalar_t__ rcv_nxt; int syn_data_acked; int /*<<< orphan*/  bytes_received; scalar_t__ segs_in; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct TYPE_2__ {scalar_t__ end_seq; int tcp_flags; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TCPHDR_FIN ; 
 int TCPHDR_SYN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 

void FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC10(sk);

	if (FUNC0(skb)->end_seq == tp->rcv_nxt)
		return;

	skb = FUNC4(skb, GFP_ATOMIC);
	if (!skb)
		return;

	FUNC5(skb);
	/* segs_in has been initialized to 1 in tcp_create_openreq_child().
	 * Hence, reset segs_in to 0 before calling tcp_segs_in()
	 * to avoid double counting.  Also, tcp_segs_in() expects
	 * skb->len to include the tcp_hdrlen.  Hence, it should
	 * be called before __skb_pull().
	 */
	tp->segs_in = 0;
	FUNC9(tp, skb);
	FUNC1(skb, FUNC8(skb));
	FUNC3(sk, skb->truesize);
	FUNC6(skb, sk);

	FUNC0(skb)->seq++;
	FUNC0(skb)->tcp_flags &= ~TCPHDR_SYN;

	tp->rcv_nxt = FUNC0(skb)->end_seq;
	FUNC2(&sk->sk_receive_queue, skb);
	tp->syn_data_acked = 1;

	/* u64_stats_update_begin(&tp->syncp) not needed here,
	 * as we certainly are not changing upper 32bit value (0)
	 */
	tp->bytes_received = skb->len;

	if (FUNC0(skb)->tcp_flags & TCPHDR_FIN)
		FUNC7(sk);
}