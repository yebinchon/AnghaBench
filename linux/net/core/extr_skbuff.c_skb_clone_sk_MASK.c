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
struct sock {int /*<<< orphan*/  sk_refcnt; } ;
struct sk_buff {int /*<<< orphan*/  destructor; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_efree ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

struct sk_buff *FUNC3(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct sk_buff *clone;

	if (!sk || !FUNC0(&sk->sk_refcnt))
		return NULL;

	clone = FUNC1(skb, GFP_ATOMIC);
	if (!clone) {
		FUNC2(sk);
		return NULL;
	}

	clone->sk = sk;
	clone->destructor = sock_efree;

	return clone;
}