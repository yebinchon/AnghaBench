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
struct xfrm_state {int /*<<< orphan*/  lock; scalar_t__ coaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int nexthdr; } ;
struct rt2_hdr {TYPE_1__ rt_hdr; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct xfrm_state *x, struct sk_buff *skb)
{
	const struct ipv6hdr *iph = FUNC2(skb);
	struct rt2_hdr *rt2 = (struct rt2_hdr *)skb->data;
	int err = rt2->rt_hdr.nexthdr;

	FUNC3(&x->lock);
	if (!FUNC1(&iph->daddr, (struct in6_addr *)x->coaddr) &&
	    !FUNC0((struct in6_addr *)x->coaddr))
		err = -ENOENT;
	FUNC4(&x->lock);

	return err;
}