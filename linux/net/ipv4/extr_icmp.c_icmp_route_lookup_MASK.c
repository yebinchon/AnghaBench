#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {unsigned long _skb_refdst; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct rtable {TYPE_4__ dst; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct TYPE_8__ {TYPE_1__ opt; } ;
struct TYPE_9__ {TYPE_2__ opt; } ;
struct icmp_bxm {TYPE_3__ replyopts; } ;
struct flowi4 {int fl4_icmp_type; int fl4_icmp_code; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_uid; int /*<<< orphan*/  flowi4_mark; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EPERM ; 
 struct rtable* FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int FUNC2 (struct rtable*) ; 
 scalar_t__ RTN_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFRM_LOOKUP_ICMP ; 
 struct rtable* FUNC4 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*) ; 
 scalar_t__ FUNC7 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC9 (struct net*,struct flowi4*) ; 
 struct rtable* FUNC10 (struct net*,struct flowi4*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct flowi4*,struct flowi4*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct rtable* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct net*,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct net*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rtable *FUNC21(struct net *net,
					struct flowi4 *fl4,
					struct sk_buff *skb_in,
					const struct iphdr *iph,
					__be32 saddr, u8 tos, u32 mark,
					int type, int code,
					struct icmp_bxm *param)
{
	struct rtable *rt, *rt2;
	struct flowi4 fl4_dec;
	int err;

	FUNC13(fl4, 0, sizeof(*fl4));
	fl4->daddr = (param->replyopts.opt.opt.srr ?
		      param->replyopts.opt.opt.faddr : iph->saddr);
	fl4->saddr = saddr;
	fl4->flowi4_mark = mark;
	fl4->flowi4_uid = FUNC18(net, NULL);
	fl4->flowi4_tos = FUNC3(tos);
	fl4->flowi4_proto = IPPROTO_ICMP;
	fl4->fl4_icmp_type = type;
	fl4->fl4_icmp_code = code;
	fl4->flowi4_oif = FUNC11(FUNC15(skb_in)->dev);

	FUNC14(skb_in, FUNC6(fl4));
	rt = FUNC10(net, fl4, skb_in);
	if (FUNC1(rt))
		return rt;

	/* No need to clone since we're just using its address. */
	rt2 = rt;

	rt = (struct rtable *) FUNC20(net, &rt->dst,
					   FUNC6(fl4), NULL, 0);
	if (!FUNC1(rt)) {
		if (rt != rt2)
			return rt;
	} else if (FUNC2(rt) == -EPERM) {
		rt = NULL;
	} else
		return rt;

	err = FUNC19(skb_in, FUNC6(&fl4_dec), AF_INET);
	if (err)
		goto relookup_failed;

	if (FUNC7(net, FUNC15(skb_in)->dev,
				     fl4_dec.saddr) == RTN_LOCAL) {
		rt2 = FUNC4(net, &fl4_dec);
		if (FUNC1(rt2))
			err = FUNC2(rt2);
	} else {
		struct flowi4 fl4_2 = {};
		unsigned long orefdst;

		fl4_2.daddr = fl4_dec.saddr;
		rt2 = FUNC9(net, &fl4_2);
		if (FUNC1(rt2)) {
			err = FUNC2(rt2);
			goto relookup_failed;
		}
		/* Ugh! */
		orefdst = skb_in->_skb_refdst; /* save old refdst */
		FUNC16(skb_in, NULL);
		err = FUNC8(skb_in, fl4_dec.daddr, fl4_dec.saddr,
				     FUNC3(tos), rt2->dst.dev);

		FUNC5(&rt2->dst);
		rt2 = FUNC17(skb_in);
		skb_in->_skb_refdst = orefdst; /* restore old refdst */
	}

	if (err)
		goto relookup_failed;

	rt2 = (struct rtable *) FUNC20(net, &rt2->dst,
					    FUNC6(&fl4_dec), NULL,
					    XFRM_LOOKUP_ICMP);
	if (!FUNC1(rt2)) {
		FUNC5(&rt->dst);
		FUNC12(fl4, &fl4_dec, sizeof(*fl4));
		rt = rt2;
	} else if (FUNC2(rt2) == -EPERM) {
		if (rt)
			FUNC5(&rt->dst);
		return rt2;
	} else {
		err = FUNC2(rt2);
		goto relookup_failed;
	}
	return rt;

relookup_failed:
	if (rt)
		return rt;
	return FUNC0(err);
}