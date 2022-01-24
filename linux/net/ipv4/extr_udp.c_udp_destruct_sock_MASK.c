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
struct udp_sock {int /*<<< orphan*/  reader_queue; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {scalar_t__ truesize; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct udp_sock* FUNC5 (struct sock*) ; 

void FUNC6(struct sock *sk)
{
	/* reclaim completely the forward allocated memory */
	struct udp_sock *up = FUNC5(sk);
	unsigned int total = 0;
	struct sk_buff *skb;

	FUNC3(&sk->sk_receive_queue, &up->reader_queue);
	while ((skb = FUNC0(&up->reader_queue)) != NULL) {
		total += skb->truesize;
		FUNC2(skb);
	}
	FUNC4(sk, total, 0, true);

	FUNC1(sk);
}