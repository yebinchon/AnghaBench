#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {scalar_t__ dev; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt6_info*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct inet6_skb_parm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 struct rt6_info* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC13(struct sk_buff *skb, struct inet6_skb_parm *opt,
	   u8 type, u8 code, int offset, __be32 info)
{
	__u32 rel_info = FUNC6(info);
	int err, rel_msg = 0;
	u8 rel_type = type;
	u8 rel_code = code;

	err = FUNC3(skb, IPPROTO_IPV6, opt, &rel_type, &rel_code,
			  &rel_msg, &rel_info, offset);
	if (err < 0)
		return err;

	if (rel_msg && FUNC7(skb, offset + sizeof(struct ipv6hdr))) {
		struct rt6_info *rt;
		struct sk_buff *skb2 = FUNC9(skb, GFP_ATOMIC);

		if (!skb2)
			return 0;

		FUNC10(skb2);
		FUNC11(skb2, offset);
		FUNC12(skb2);

		/* Try to guess incoming interface */
		rt = FUNC8(FUNC0(skb->dev), &FUNC4(skb2)->saddr,
				NULL, 0, skb2, 0);

		if (rt && rt->dst.dev)
			skb2->dev = rt->dst.dev;

		FUNC1(skb2, rel_type, rel_code, rel_info);

		FUNC2(rt);

		FUNC5(skb2);
	}

	return 0;
}