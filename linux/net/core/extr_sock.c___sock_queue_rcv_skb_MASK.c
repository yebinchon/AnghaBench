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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/ * dev; int /*<<< orphan*/  truesize; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 

int FUNC12(struct sock *sk, struct sk_buff *skb)
{
	unsigned long flags;
	struct sk_buff_head *list = &sk->sk_receive_queue;

	if (FUNC2(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf) {
		FUNC1(&sk->sk_drops);
		FUNC11(sk, skb);
		return -ENOMEM;
	}

	if (!FUNC3(sk, skb, skb->truesize)) {
		FUNC1(&sk->sk_drops);
		return -ENOBUFS;
	}

	skb->dev = NULL;
	FUNC5(skb, sk);

	/* we escape from rcu protected region, make sure we dont leak
	 * a norefcounted dst
	 */
	FUNC4(skb);

	FUNC8(&list->lock, flags);
	FUNC7(sk, skb);
	FUNC0(list, skb);
	FUNC9(&list->lock, flags);

	if (!FUNC6(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);
	return 0;
}