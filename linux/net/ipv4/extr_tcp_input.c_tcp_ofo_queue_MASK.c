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
struct tcp_sock {int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  rbnode; } ;
struct rb_node {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int tcp_flags; int /*<<< orphan*/  end_seq; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int TCPHDR_FIN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC6 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC7 (struct rb_node*) ; 
 struct sk_buff* FUNC8 (struct rb_node*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (struct sock*,struct sk_buff*,struct sk_buff*,int*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct sock *sk)
{
	struct tcp_sock *tp = FUNC14(sk);
	__u32 dsack_high = tp->rcv_nxt;
	bool fin, fragstolen, eaten;
	struct sk_buff *skb, *tail;
	struct rb_node *p;

	p = FUNC6(&tp->out_of_order_queue);
	while (p) {
		skb = FUNC8(p);
		if (FUNC2(FUNC0(skb)->seq, tp->rcv_nxt))
			break;

		if (FUNC3(FUNC0(skb)->seq, dsack_high)) {
			__u32 dsack = dsack_high;
			if (FUNC3(FUNC0(skb)->end_seq, dsack_high))
				dsack_high = FUNC0(skb)->end_seq;
			FUNC11(sk, FUNC0(skb)->seq, dsack);
		}
		p = FUNC7(p);
		FUNC5(&skb->rbnode, &tp->out_of_order_queue);

		if (FUNC16(!FUNC2(FUNC0(skb)->end_seq, tp->rcv_nxt))) {
			FUNC10(sk, skb);
			continue;
		}

		tail = FUNC9(&sk->sk_receive_queue);
		eaten = tail && FUNC15(sk, tail, skb, &fragstolen);
		FUNC13(tp, FUNC0(skb)->end_seq);
		fin = FUNC0(skb)->tcp_flags & TCPHDR_FIN;
		if (!eaten)
			FUNC1(&sk->sk_receive_queue, skb);
		else
			FUNC4(skb, fragstolen);

		if (FUNC16(fin)) {
			FUNC12(sk);
			/* tcp_fin() purges tp->out_of_order_queue,
			 * so we must end this loop right now.
			 */
			break;
		}
	}
}