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
struct sk_buff {unsigned int len; } ;
struct iphdr {int version; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  ihl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb)
{
	const struct iphdr *iph;
	unsigned int len;
	unsigned int offset = FUNC5(skb) + sizeof(*iph);

	if (!FUNC4(skb, offset))
		return -EINVAL;

	iph = FUNC1(skb);

	if (iph->version != 4 || FUNC2(skb) < sizeof(*iph))
		return -EINVAL;

	offset += FUNC2(skb) - sizeof(*iph);

	if (!FUNC4(skb, offset))
		return -EINVAL;

	iph = FUNC1(skb);

	if (FUNC7(FUNC0((u8 *)iph, iph->ihl)))
		return -EINVAL;

	len = FUNC5(skb) + FUNC3(iph->tot_len);
	if (skb->len < len || len < offset)
		return -EINVAL;

	FUNC6(skb, offset);

	return 0;
}