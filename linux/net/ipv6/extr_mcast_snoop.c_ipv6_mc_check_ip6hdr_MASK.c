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
struct sk_buff {unsigned int len; } ;
struct ipv6hdr {int version; int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ipv6hdr* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	const struct ipv6hdr *ip6h;
	unsigned int len;
	unsigned int offset = FUNC3(skb) + sizeof(*ip6h);

	if (!FUNC2(skb, offset))
		return -EINVAL;

	ip6h = FUNC0(skb);

	if (ip6h->version != 6)
		return -EINVAL;

	len = offset + FUNC1(ip6h->payload_len);
	if (skb->len < len || len <= offset)
		return -EINVAL;

	FUNC4(skb, offset);

	return 0;
}