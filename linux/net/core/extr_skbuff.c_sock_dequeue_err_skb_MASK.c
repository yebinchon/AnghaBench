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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; struct sk_buff_head sk_error_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ee_origin; } ;
struct TYPE_4__ {TYPE_1__ ee; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

struct sk_buff *FUNC7(struct sock *sk)
{
	struct sk_buff_head *q = &sk->sk_error_queue;
	struct sk_buff *skb, *skb_next = NULL;
	bool icmp_next = false;
	unsigned long flags;

	FUNC4(&q->lock, flags);
	skb = FUNC1(q);
	if (skb && (skb_next = FUNC3(q))) {
		icmp_next = FUNC2(skb_next);
		if (icmp_next)
			sk->sk_err = FUNC0(skb_next)->ee.ee_origin;
	}
	FUNC5(&q->lock, flags);

	if (FUNC2(skb) && !icmp_next)
		sk->sk_err = 0;

	if (skb_next)
		sk->sk_error_report(sk);

	return skb;
}