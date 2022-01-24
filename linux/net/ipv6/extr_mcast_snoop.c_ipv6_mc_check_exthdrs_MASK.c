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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMSG ; 
 scalar_t__ IPPROTO_HOPOPTS ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 struct ipv6hdr* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	const struct ipv6hdr *ip6h;
	int offset;
	u8 nexthdr;
	__be16 frag_off;

	ip6h = FUNC0(skb);

	if (ip6h->nexthdr != IPPROTO_HOPOPTS)
		return -ENOMSG;

	nexthdr = ip6h->nexthdr;
	offset = FUNC2(skb) + sizeof(*ip6h);
	offset = FUNC1(skb, offset, &nexthdr, &frag_off);

	if (offset < 0)
		return -EINVAL;

	if (nexthdr != IPPROTO_ICMPV6)
		return -ENOMSG;

	FUNC3(skb, offset);

	return 0;
}