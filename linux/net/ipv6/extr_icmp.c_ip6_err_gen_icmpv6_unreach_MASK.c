#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct sk_buff {unsigned int len; scalar_t__ data; scalar_t__ dev; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct ipv6hdr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ICMPV6_ADDR_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 int ICMP_TIME_EXCEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt6_info*) ; 
 TYPE_3__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct in6_addr*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 struct rt6_info* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

int FUNC17(struct sk_buff *skb, int nhs, int type,
			       unsigned int data_len)
{
	struct in6_addr temp_saddr;
	struct rt6_info *rt;
	struct sk_buff *skb2;
	u32 info = 0;

	if (!FUNC10(skb, nhs + sizeof(struct ipv6hdr) + 8))
		return 1;

	/* RFC 4884 (partial) support for ICMP extensions */
	if (data_len < 128 || (data_len & 7) || skb->len < data_len)
		data_len = 0;

	skb2 = data_len ? FUNC13(skb, GFP_ATOMIC) : FUNC12(skb, GFP_ATOMIC);

	if (!skb2)
		return 1;

	FUNC14(skb2);
	FUNC15(skb2, nhs);
	FUNC16(skb2);

	rt = FUNC11(FUNC1(skb->dev), &FUNC6(skb2)->saddr, NULL, 0,
			skb, 0);

	if (rt && rt->dst.dev)
		skb2->dev = rt->dst.dev;

	FUNC5(FUNC4(skb)->saddr, &temp_saddr);

	if (data_len) {
		/* RFC 4884 (partial) support :
		 * insert 0 padding at the end, before the extensions
		 */
		FUNC0(skb2, nhs);
		FUNC16(skb2);
		FUNC8(skb2->data, skb2->data + nhs, data_len - nhs);
		FUNC9(skb2->data + data_len - nhs, 0, nhs);
		/* RFC 4884 4.5 : Length is measured in 64-bit words,
		 * and stored in reserved[0]
		 */
		info = (data_len/8) << 24;
	}
	if (type == ICMP_TIME_EXCEEDED)
		FUNC2(skb2, ICMPV6_TIME_EXCEED, ICMPV6_EXC_HOPLIMIT,
			   info, &temp_saddr);
	else
		FUNC2(skb2, ICMPV6_DEST_UNREACH, ICMPV6_ADDR_UNREACH,
			   info, &temp_saddr);
	if (rt)
		FUNC3(rt);

	FUNC7(skb2);

	return 0;
}