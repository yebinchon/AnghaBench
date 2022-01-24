#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct rtvia {int* rtvia_addr; scalar_t__ rtvia_family; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_table; int rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_tos; scalar_t__ rtm_family; } ;
struct TYPE_6__ {int tclassid; unsigned long expires; int error; TYPE_1__* dev; } ;
struct rtable {int rt_flags; scalar_t__ rt_gw_family; scalar_t__ rt_gw4; int rt_pmtu; TYPE_2__ dst; scalar_t__ rt_mtu_locked; int /*<<< orphan*/  rt_gw6; scalar_t__ rt_uses_gateway; int /*<<< orphan*/  rt_type; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi4 {scalar_t__ saddr; int flowi4_mark; int flowi4_iif; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_uid; int /*<<< orphan*/  flowi4_tos; } ;
typedef  int /*<<< orphan*/  metrics ;
typedef  scalar_t__ __be32 ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {int ifindex; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  INVALID_UID ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int IPSKB_DOREDIRECT ; 
 scalar_t__ FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_FORWARDING ; 
 int RTAX_LOCK ; 
 int RTAX_MAX ; 
 int RTAX_MTU ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_FLOW ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_IIF ; 
 int /*<<< orphan*/  RTA_MARK ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTA_PREFSRC ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int /*<<< orphan*/  RTA_UID ; 
 int /*<<< orphan*/  RTA_VIA ; 
 int RTCF_DOREDIRECT ; 
 int RTCF_NOTIFY ; 
 int RTM_F_CLONED ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  RTPROT_UNSPEC ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int RT_TABLE_COMPAT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,struct rtmsg*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int) ; 
 struct rtvia* FUNC10 (struct nlattr*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct nlattr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC15 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC17 (struct sk_buff*,int,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ FUNC18 (struct rtable*) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC20 (struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ FUNC21 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct net *net, __be32 dst, __be32 src,
			struct rtable *rt, u32 table_id, struct flowi4 *fl4,
			struct sk_buff *skb, u32 portid, u32 seq,
			unsigned int flags)
{
	struct rtmsg *r;
	struct nlmsghdr *nlh;
	unsigned long expires = 0;
	u32 error;
	u32 metrics[RTAX_MAX];

	nlh = FUNC17(skb, portid, seq, RTM_NEWROUTE, sizeof(*r), flags);
	if (!nlh)
		return -EMSGSIZE;

	r = FUNC15(nlh);
	r->rtm_family	 = AF_INET;
	r->rtm_dst_len	= 32;
	r->rtm_src_len	= 0;
	r->rtm_tos	= fl4 ? fl4->flowi4_tos : 0;
	r->rtm_table	= table_id < 256 ? table_id : RT_TABLE_COMPAT;
	if (FUNC12(skb, RTA_TABLE, table_id))
		goto nla_put_failure;
	r->rtm_type	= rt->rt_type;
	r->rtm_scope	= RT_SCOPE_UNIVERSE;
	r->rtm_protocol = RTPROT_UNSPEC;
	r->rtm_flags	= (rt->rt_flags & ~0xFFFF) | RTM_F_CLONED;
	if (rt->rt_flags & RTCF_NOTIFY)
		r->rtm_flags |= RTM_F_NOTIFY;
	if (FUNC1(skb)->flags & IPSKB_DOREDIRECT)
		r->rtm_flags |= RTCF_DOREDIRECT;

	if (FUNC11(skb, RTA_DST, dst))
		goto nla_put_failure;
	if (src) {
		r->rtm_src_len = 32;
		if (FUNC11(skb, RTA_SRC, src))
			goto nla_put_failure;
	}
	if (rt->dst.dev &&
	    FUNC12(skb, RTA_OIF, rt->dst.dev->ifindex))
		goto nla_put_failure;
#ifdef CONFIG_IP_ROUTE_CLASSID
	if (rt->dst.tclassid &&
	    nla_put_u32(skb, RTA_FLOW, rt->dst.tclassid))
		goto nla_put_failure;
#endif
	if (fl4 && !FUNC18(rt) &&
	    fl4->saddr != src) {
		if (FUNC11(skb, RTA_PREFSRC, fl4->saddr))
			goto nla_put_failure;
	}
	if (rt->rt_uses_gateway) {
		if (rt->rt_gw_family == AF_INET &&
		    FUNC11(skb, RTA_GATEWAY, rt->rt_gw4)) {
			goto nla_put_failure;
		} else if (rt->rt_gw_family == AF_INET6) {
			int alen = sizeof(struct in6_addr);
			struct nlattr *nla;
			struct rtvia *via;

			nla = FUNC13(skb, RTA_VIA, alen + 2);
			if (!nla)
				goto nla_put_failure;

			via = FUNC10(nla);
			via->rtvia_family = AF_INET6;
			FUNC9(via->rtvia_addr, &rt->rt_gw6, alen);
		}
	}

	expires = rt->dst.expires;
	if (expires) {
		unsigned long now = jiffies;

		if (FUNC21(now, expires))
			expires -= now;
		else
			expires = 0;
	}

	FUNC9(metrics, FUNC4(&rt->dst), sizeof(metrics));
	if (rt->rt_pmtu && expires)
		metrics[RTAX_MTU - 1] = rt->rt_pmtu;
	if (rt->rt_mtu_locked && expires)
		metrics[RTAX_LOCK - 1] |= FUNC0(RTAX_MTU);
	if (FUNC19(skb, metrics) < 0)
		goto nla_put_failure;

	if (fl4) {
		if (fl4->flowi4_mark &&
		    FUNC12(skb, RTA_MARK, fl4->flowi4_mark))
			goto nla_put_failure;

		if (!FUNC22(fl4->flowi4_uid, INVALID_UID) &&
		    FUNC12(skb, RTA_UID,
				FUNC5(FUNC3(),
						 fl4->flowi4_uid)))
			goto nla_put_failure;

		if (FUNC18(rt)) {
#ifdef CONFIG_IP_MROUTE
			if (ipv4_is_multicast(dst) &&
			    !ipv4_is_local_multicast(dst) &&
			    IPV4_DEVCONF_ALL(net, MC_FORWARDING)) {
				int err = ipmr_get_route(net, skb,
							 fl4->saddr, fl4->daddr,
							 r, portid);

				if (err <= 0) {
					if (err == 0)
						return 0;
					goto nla_put_failure;
				}
			} else
#endif
				if (FUNC12(skb, RTA_IIF, fl4->flowi4_iif))
					goto nla_put_failure;
		}
	}

	error = rt->dst.error;

	if (FUNC20(skb, &rt->dst, 0, expires, error) < 0)
		goto nla_put_failure;

	FUNC16(skb, nlh);
	return 0;

nla_put_failure:
	FUNC14(skb, nlh);
	return -EMSGSIZE;
}