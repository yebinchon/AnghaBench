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
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {unsigned int truesize; int /*<<< orphan*/  destructor; struct sock* sk; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_rmem_free ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

int FUNC9(struct sock *sk, struct sk_buff *skb)
{
	if (FUNC2(&sk->sk_rmem_alloc) + skb->truesize >=
	    (unsigned int)FUNC0(sk->sk_rcvbuf))
		return -ENOMEM;

	FUNC4(skb);
	skb->sk = sk;
	skb->destructor = sock_rmem_free;
	FUNC1(skb->truesize, &sk->sk_rmem_alloc);
	FUNC6(skb);

	/* before exiting rcu section, make sure dst is refcounted */
	FUNC3(skb);

	FUNC5(&sk->sk_error_queue, skb);
	if (!FUNC7(sk, SOCK_DEAD))
		sk->sk_error_report(sk);
	return 0;
}