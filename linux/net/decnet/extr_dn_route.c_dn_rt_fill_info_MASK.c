#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_table; scalar_t__ rtm_tos; int /*<<< orphan*/  rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ saddr; int /*<<< orphan*/  flowidn_iif; } ;
struct TYPE_7__ {long expires; int /*<<< orphan*/  error; TYPE_1__* dev; } ;
struct dn_route {int rt_flags; scalar_t__ rt_daddr; scalar_t__ rt_local_src; scalar_t__ rt_gateway; TYPE_2__ fld; TYPE_3__ dst; int /*<<< orphan*/  rt_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_DECnet ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_IIF ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTA_PREFSRC ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int RTCF_NOTIFY ; 
 int RTM_F_CLONED ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTPROT_UNSPEC ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  RT_TABLE_MAIN ; 
 scalar_t__ FUNC0 (struct dn_route*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 long jiffies ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,TYPE_3__*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, u32 portid, u32 seq,
			   int event, int nowait, unsigned int flags)
{
	struct dn_route *rt = (struct dn_route *)FUNC10(skb);
	struct rtmsg *r;
	struct nlmsghdr *nlh;
	long expires;

	nlh = FUNC7(skb, portid, seq, event, sizeof(*r), flags);
	if (!nlh)
		return -EMSGSIZE;

	r = FUNC5(nlh);
	r->rtm_family = AF_DECnet;
	r->rtm_dst_len = 16;
	r->rtm_src_len = 0;
	r->rtm_tos = 0;
	r->rtm_table = RT_TABLE_MAIN;
	r->rtm_type = rt->rt_type;
	r->rtm_flags = (rt->rt_flags & ~0xFFFF) | RTM_F_CLONED;
	r->rtm_scope = RT_SCOPE_UNIVERSE;
	r->rtm_protocol = RTPROT_UNSPEC;

	if (rt->rt_flags & RTCF_NOTIFY)
		r->rtm_flags |= RTM_F_NOTIFY;

	if (FUNC3(skb, RTA_TABLE, RT_TABLE_MAIN) < 0 ||
	    FUNC2(skb, RTA_DST, rt->rt_daddr) < 0)
		goto errout;

	if (rt->fld.saddr) {
		r->rtm_src_len = 16;
		if (FUNC2(skb, RTA_SRC, rt->fld.saddr) < 0)
			goto errout;
	}
	if (rt->dst.dev &&
	    FUNC3(skb, RTA_OIF, rt->dst.dev->ifindex) < 0)
		goto errout;

	/*
	 * Note to self - change this if input routes reverse direction when
	 * they deal only with inputs and not with replies like they do
	 * currently.
	 */
	if (FUNC2(skb, RTA_PREFSRC, rt->rt_local_src) < 0)
		goto errout;

	if (rt->rt_daddr != rt->rt_gateway &&
	    FUNC2(skb, RTA_GATEWAY, rt->rt_gateway) < 0)
		goto errout;

	if (FUNC8(skb, FUNC1(&rt->dst)) < 0)
		goto errout;

	expires = rt->dst.expires ? rt->dst.expires - jiffies : 0;
	if (FUNC9(skb, &rt->dst, 0, expires,
			       rt->dst.error) < 0)
		goto errout;

	if (FUNC0(rt) &&
	    FUNC3(skb, RTA_IIF, rt->fld.flowidn_iif) < 0)
		goto errout;

	FUNC6(skb, nlh);
	return 0;

errout:
	FUNC4(skb, nlh);
	return -EMSGSIZE;
}