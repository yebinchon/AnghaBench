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
struct sk_buff_head {int dummy; } ;
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; int /*<<< orphan*/  destructor; struct sock* sk; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcm_rfree ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff_head *list = &sk->sk_receive_queue;

	if (FUNC1(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
		return -ENOMEM;

	if (!FUNC3(sk, skb, skb->truesize))
		return -ENOBUFS;

	skb->dev = NULL;

	FUNC4(skb);
	skb->sk = sk;
	skb->destructor = kcm_rfree;
	FUNC0(skb->truesize, &sk->sk_rmem_alloc);
	FUNC2(sk, skb->truesize);

	FUNC5(list, skb);

	if (!FUNC6(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);

	return 0;
}