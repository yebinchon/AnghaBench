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
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct ipv6_pinfo {scalar_t__ rtalert_isolate; } ;
struct ip6_ra_chain {int sel; struct sock* sk; struct ip6_ra_chain* next; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 struct ip6_ra_chain* ip6_ra_chain ; 
 int /*<<< orphan*/  ip6_ra_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, int sel)
{
	struct ip6_ra_chain *ra;
	struct sock *last = NULL;

	FUNC4(&ip6_ra_lock);
	for (ra = ip6_ra_chain; ra; ra = ra->next) {
		struct sock *sk = ra->sk;
		if (sk && ra->sel == sel &&
		    (!sk->sk_bound_dev_if ||
		     sk->sk_bound_dev_if == skb->dev->ifindex)) {
			struct ipv6_pinfo *np = FUNC1(sk);

			if (np && np->rtalert_isolate &&
			    !FUNC2(FUNC7(sk), FUNC0(skb->dev))) {
				continue;
			}
			if (last) {
				struct sk_buff *skb2 = FUNC6(skb, GFP_ATOMIC);
				if (skb2)
					FUNC3(last, skb2);
			}
			last = sk;
		}
	}

	if (last) {
		FUNC3(last, skb);
		FUNC5(&ip6_ra_lock);
		return 1;
	}
	FUNC5(&ip6_ra_lock);
	return 0;
}