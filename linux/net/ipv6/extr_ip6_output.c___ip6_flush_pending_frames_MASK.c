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
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_cork_full {int dummy; } ;
struct inet6_cork {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet_cork_full*,struct inet6_cork*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk,
				       struct sk_buff_head *queue,
				       struct inet_cork_full *cork,
				       struct inet6_cork *v6_cork)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(queue)) != NULL) {
		if (FUNC5(skb))
			FUNC0(FUNC6(sk), FUNC3(FUNC5(skb)),
				      IPSTATS_MIB_OUTDISCARDS);
		FUNC4(skb);
	}

	FUNC2(cork, v6_cork);
}