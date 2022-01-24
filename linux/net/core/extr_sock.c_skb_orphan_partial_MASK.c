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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_refcnt; } ;
struct sk_buff {int /*<<< orphan*/  destructor; int /*<<< orphan*/  truesize; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  sock_efree ; 

void FUNC6(struct sk_buff *skb)
{
	if (FUNC4(skb))
		return;

	if (FUNC1(skb)) {
		struct sock *sk = skb->sk;

		if (FUNC2(&sk->sk_refcnt)) {
			FUNC0(FUNC3(skb->truesize, &sk->sk_wmem_alloc));
			skb->destructor = sock_efree;
		}
	} else {
		FUNC5(skb);
	}
}