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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int data; int len; } ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; } ;
typedef  int __be16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC6(struct sk_buff *skb, int hook)
{
	const struct ipv6hdr *ip6h = FUNC1(skb);
	int thoff;
	__be16 fo;
	u8 proto;

	if (FUNC5(skb))
		return true;

	proto = ip6h->nexthdr;
	thoff = FUNC2(skb, ((u8 *)(ip6h + 1) - skb->data), &proto, &fo);

	if (thoff < 0 || thoff >= skb->len || (fo & FUNC0(~0x7)) != 0)
		return false;

	if (!FUNC4(proto))
		return true;

	return FUNC3(skb, hook, thoff, proto) == 0;
}