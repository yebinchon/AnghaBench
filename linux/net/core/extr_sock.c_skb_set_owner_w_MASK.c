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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/  truesize; int /*<<< orphan*/  destructor; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  sock_edemux ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  sock_wfree ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct sk_buff *skb, struct sock *sk)
{
	FUNC2(skb);
	skb->sk = sk;
#ifdef CONFIG_INET
	if (unlikely(!sk_fullsock(sk))) {
		skb->destructor = sock_edemux;
		sock_hold(sk);
		return;
	}
#endif
	skb->destructor = sock_wfree;
	FUNC3(skb, sk);
	/*
	 * We used to take a refcount on sk, but following operation
	 * is enough to guarantee sk_free() wont free this sock until
	 * all in-flight packets are completed
	 */
	FUNC0(skb->truesize, &sk->sk_wmem_alloc);
}