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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {struct sk_buff_head reader_queue; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sock*,struct sk_buff_head*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int,int,int) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk)
{
	struct sk_buff_head *rcvq = &FUNC8(sk)->reader_queue;
	struct sk_buff_head *sk_queue = &sk->sk_receive_queue;
	struct sk_buff *skb;
	int total = 0;
	int res;

	FUNC4(&rcvq->lock);
	skb = FUNC0(sk, rcvq, &total);
	if (!skb && !FUNC1(sk_queue)) {
		FUNC3(&sk_queue->lock);
		FUNC2(sk_queue, rcvq);
		FUNC5(&sk_queue->lock);

		skb = FUNC0(sk, rcvq, &total);
	}
	res = skb ? skb->len : -1;
	if (total)
		FUNC7(sk, total, 1, false);
	FUNC6(&rcvq->lock);
	return res;
}