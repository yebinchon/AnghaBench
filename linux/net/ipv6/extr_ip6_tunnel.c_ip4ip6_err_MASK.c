#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {TYPE_4__* dev; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;
struct rtable {int rt_flags; TYPE_2__ dst; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi4 {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
struct TYPE_7__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_TUNNEL6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ICMPV6_ADDR_UNREACH ; 
#define  ICMPV6_DEST_UNREACH 129 
#define  ICMPV6_PKT_TOOBIG 128 
 int ICMP_DEST_UNREACH ; 
 int ICMP_FRAG_NEEDED ; 
 int ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int RTCF_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,struct inet6_skb_parm*,int*,int*,int*,scalar_t__*,int) ; 
 struct iphdr* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 struct rtable* FUNC9 (int /*<<< orphan*/ ,struct flowi4*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC21(struct sk_buff *skb, struct inet6_skb_parm *opt,
	   u8 type, u8 code, int offset, __be32 info)
{
	__u32 rel_info = FUNC12(info);
	const struct iphdr *eiph;
	struct sk_buff *skb2;
	int err, rel_msg = 0;
	u8 rel_type = type;
	u8 rel_code = code;
	struct rtable *rt;
	struct flowi4 fl4;

	err = FUNC6(skb, IPPROTO_IPIP, opt, &rel_type, &rel_code,
			  &rel_msg, &rel_info, offset);
	if (err < 0)
		return err;

	if (rel_msg == 0)
		return 0;

	switch (rel_type) {
	case ICMPV6_DEST_UNREACH:
		if (rel_code != ICMPV6_ADDR_UNREACH)
			return 0;
		rel_type = ICMP_DEST_UNREACH;
		rel_code = ICMP_HOST_UNREACH;
		break;
	case ICMPV6_PKT_TOOBIG:
		if (rel_code != 0)
			return 0;
		rel_type = ICMP_DEST_UNREACH;
		rel_code = ICMP_FRAG_NEEDED;
		break;
	default:
		return 0;
	}

	if (!FUNC13(skb, offset + sizeof(struct iphdr)))
		return 0;

	skb2 = FUNC14(skb, GFP_ATOMIC);
	if (!skb2)
		return 0;

	FUNC16(skb2);

	FUNC19(skb2, offset);
	FUNC20(skb2);
	eiph = FUNC7(skb2);

	/* Try to guess incoming interface */
	rt = FUNC9(FUNC2(skb->dev), &fl4, NULL, eiph->saddr,
				   0, 0, 0, IPPROTO_IPIP, FUNC1(eiph->tos), 0);
	if (FUNC0(rt))
		goto out;

	skb2->dev = rt->dst.dev;
	FUNC10(rt);

	/* route "incoming" packet */
	if (rt->rt_flags & RTCF_LOCAL) {
		rt = FUNC9(FUNC2(skb->dev), &fl4, NULL,
					   eiph->daddr, eiph->saddr, 0, 0,
					   IPPROTO_IPIP, FUNC1(eiph->tos), 0);
		if (FUNC0(rt) || rt->dst.dev->type != ARPHRD_TUNNEL6) {
			if (!FUNC0(rt))
				FUNC10(rt);
			goto out;
		}
		FUNC17(skb2, &rt->dst);
	} else {
		if (FUNC8(skb2, eiph->daddr, eiph->saddr, eiph->tos,
				   skb2->dev) ||
		    FUNC15(skb2)->dev->type != ARPHRD_TUNNEL6)
			goto out;
	}

	/* change mtu on this route */
	if (rel_type == ICMP_DEST_UNREACH && rel_code == ICMP_FRAG_NEEDED) {
		if (rel_info > FUNC3(FUNC15(skb2)))
			goto out;

		FUNC18(skb2, rel_info);
	}

	FUNC5(skb2, rel_type, rel_code, FUNC4(rel_info));

out:
	FUNC11(skb2);
	return 0;
}